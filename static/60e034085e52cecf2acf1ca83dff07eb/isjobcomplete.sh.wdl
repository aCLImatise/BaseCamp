version 1.0

task Isjobcompletesh {
  input {
    String? running
  }
  command <<<
    isjobcomplete_sh \
      ~{if defined(running) then ("-h " +  '"' + running + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    running: "/running"
  }
  output {
    File out_stdout = stdout()
  }
}