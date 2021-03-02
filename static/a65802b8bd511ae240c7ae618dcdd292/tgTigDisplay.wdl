version 1.0

task TgTigDisplay {
  input {
    File? t
    String? s
  }
  command <<<
    tgTigDisplay \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}