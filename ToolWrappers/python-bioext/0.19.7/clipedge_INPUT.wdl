version 1.0

task ClipedgeINPUT {
  input {
    String? r
    String var_output
  }
  command <<<
    clipedge INPUT \
      ~{var_output} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}