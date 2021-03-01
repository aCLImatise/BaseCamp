version 1.0

task Makeidxpl {
  input {
    String? s
    Boolean? ian_p
  }
  command <<<
    makeidx_pl \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (ian_p) then "-ianp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s: ""
    ian_p: ""
  }
  output {
    File out_stdout = stdout()
  }
}