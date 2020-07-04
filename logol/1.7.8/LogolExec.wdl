version 1.0

task LogolExec.sh {
  input {
    String? m
    String? g
    Int minimum
    String arguments
    String are
    String var_5
    String model
    String or
    String var_8
    String grammar
  }
  command <<<
    LogolExec.sh \
      ~{minimum} \
      ~{arguments} \
      ~{are} \
      ~{var_5} \
      ~{model} \
      ~{or} \
      ~{var_8} \
      ~{grammar} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    g: ""
    minimum: ""
    arguments: ""
    are: ""
    var_5: ""
    model: ""
    or: ""
    var_8: ""
    grammar: ""
  }
}