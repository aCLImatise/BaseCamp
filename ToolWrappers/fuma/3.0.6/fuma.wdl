version 1.0

task Fuma {
  input {
    String? m
    Boolean? formats
    Boolean? v
  }
  command <<<
    fuma \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (formats) then "--formats" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    m: ""
    formats: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}