version 1.0

task MerTrimApply {
  input {
    String? var_0
    String? g
    String? var_2
  }
  command <<<
    merTrimApply \
      ~{if defined(var_0) then ("-l " +  '"' + var_0 + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(var_2) then ("-L " +  '"' + var_2 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: ""
    g: ""
    var_2: ""
  }
  output {
    File out_stdout = stdout()
  }
}