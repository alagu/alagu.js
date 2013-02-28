###
 Simple replace based templating language
 which works in Chrome packaged apps.

 Syntax : template is a string with {{ variables }}
          data is a hash of variables with values

 Example: Alagu.render("Hello {{ tester }}", {tester : 'Alagu'})

###
root = exports ? this

Alagu = {}
root.Alagu = Alagu

Alagu.render = (template, data)->
  variables_strings = template.match(/{{((.*?))}}/gim)
  variable_items    = []
  for variable in variables_strings
    variable_item = variable.replace("{{", "").replace("}}", "").trim()
    variable_items.push name : variable_item, template : variable

  render_template = template

  for variable in variable_items
    if data and data.hasOwnProperty variable.name
      value = data[variable.name]
    else
      value = ""

    render_template = render_template.replace(variable.template, value)

  render_template
