version 1.0

task Dxlogstream {
  input {
    String? l
  }
  command <<<
    dx_log_stream \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    l: ""
  }
  output {
    File out_stdout = stdout()
  }
}