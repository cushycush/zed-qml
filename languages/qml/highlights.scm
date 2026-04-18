;;; Annotations

(ui_annotation
  "@" @operator
  type_name: [
    (identifier) @attribute
    (nested_identifier (identifier) @attribute)
  ])

;;; Properties

(ui_object_definition_binding
  name: [
    (identifier) @property
    (nested_identifier (identifier) @property)
  ])

(ui_binding
  name: [
    (identifier) @property
    (nested_identifier (identifier) @property)
  ])

(ui_binding
  name: (identifier) @property
  (#eq? @property "id")
  value: (expression_statement (identifier) @variable))

(ui_property
  name: (identifier) @property)

(ui_required
  name: (identifier) @property)

(ui_list_property_type
  ["<" ">"] @punctuation.bracket)

;;; Signals

(ui_signal
  name: (identifier) @function)

(ui_signal_parameter
  (identifier) @variable.parameter)

;;; Types

(ui_object_definition
  type_name: [
    (identifier) @type
    (nested_identifier (identifier) @type)
  ])

;;; Keywords

[
  "as"
  "component"
  "default"
  "final"
  "import"
  "on"
  "override"
  "pragma"
  "property"
  "readonly"
  "required"
  "signal"
  "virtual"
] @keyword

[
  "if"
  "else"
  "for"
  "while"
  "do"
  "switch"
  "case"
  "break"
  "continue"
  "return"
  "throw"
  "try"
  "catch"
  "finally"
  "new"
  "delete"
  "typeof"
  "instanceof"
  "in"
  "of"
  "function"
  "class"
  "async"
  "await"
  "yield"
  "var"
  "let"
  "const"
] @keyword

;;; Literals

[
  (true)
  (false)
] @constant.builtin

(null) @constant.builtin
(undefined) @constant.builtin
(this) @variable.builtin

(number) @number
(string) @string
(template_string) @string
(regex) @string.regex
(escape_sequence) @string.escape

(comment) @comment

;;; Punctuation

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  "."
  ";"
  ":"
] @punctuation.delimiter

;;; Operators

[
  "="
  "+"
  "-"
  "*"
  "/"
  "%"
  "<"
  ">"
  "=="
  "==="
  "!="
  "!=="
  "<="
  ">="
  "&&"
  "||"
  "!"
  "?"
  "=>"
] @operator
