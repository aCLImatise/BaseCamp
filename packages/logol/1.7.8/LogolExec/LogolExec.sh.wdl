version 1.0

task LogolExecsh {
  input {
    String? g
    String? m
    String minimum
    String arguments
    String are
    String logol
    String model
    String or
    String grammar
  }
  command <<<
    LogolExec_sh \
      ~{minimum} \
      ~{arguments} \
      ~{are} \
      ~{logol} \
      ~{model} \
      ~{or} \
      ~{grammar} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    m: ""
    minimum: ""
    arguments: ""
    are: ""
    logol: ""
    model: ""
    or: ""
    grammar: ""
  }
  output {
    File out_stdout = stdout()
  }
}