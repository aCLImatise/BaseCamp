version 1.0

task LengthFilter {
  input {
    Int? l
    String var_1
    String var_2
  }
  command <<<
    lengthFilter \
      ~{var_1} \
      ~{var_2} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    l: ""
    var_1: ""
    var_2: ""
  }
}