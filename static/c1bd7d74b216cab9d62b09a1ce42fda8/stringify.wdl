version 1.0

task Stringify {
  input {
    String? var
    Boolean? static
    Boolean? create_array_strings
    String in_dot_txt
  }
  command <<<
    stringify \
      ~{in_dot_txt} \
      ~{if defined(var) then ("-var " +  '"' + var + '"') else ""} \
      ~{true="-static" false="" static} \
      ~{true="-array" false="" create_array_strings}
  >>>
  parameter_meta {
    var: "- create a variable with the specified name containing the string."
    static: "- create the variable but put static in front of it."
    create_array_strings: "- create an array of strings, one for each line"
    in_dot_txt: ""
  }
}