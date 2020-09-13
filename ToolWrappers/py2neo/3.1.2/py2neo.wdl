version 1.0

task Py2neo {
  input {
    String? p
    String? h
    String run
    String statement
  }
  command <<<
    py2neo \
      ~{run} \
      ~{statement} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(h) then ("-H " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    h: ""
    run: ""
    statement: ""
  }
  output {
    File out_stdout = stdout()
  }
}