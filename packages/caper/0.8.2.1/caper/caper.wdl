version 1.0

task Caper {
  input {
    File? conf
    Boolean? v
  }
  command <<<
    caper \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    conf: "Specify config file"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}