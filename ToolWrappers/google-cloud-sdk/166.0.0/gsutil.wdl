version 1.0

task Gsutil {
  input {
    String? h
    Boolean? dd
    Boolean? d
  }
  command <<<
    gsutil \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if (dd) then "-DD" else ""} \
      ~{if (d) then "-D" else ""}
  >>>
  parameter_meta {
    h: ""
    dd: ""
    d: ""
  }
  output {
    File out_stdout = stdout()
  }
}