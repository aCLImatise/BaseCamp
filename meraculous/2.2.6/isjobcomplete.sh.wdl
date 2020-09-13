version 1.0

task Isjobcompletesh {
  input {
    String? h
  }
  command <<<
    isjobcomplete_sh \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    h: ""
  }
  output {
    File out_stdout = stdout()
  }
}