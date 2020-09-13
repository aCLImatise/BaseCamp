version 1.0

task Pathwaymatcherpy {
  input {
    Boolean? hv
    String? jar
  }
  command <<<
    pathwaymatcher_py \
      ~{if (hv) then "-hv" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    hv: ""
    jar: ""
  }
  output {
    File out_stdout = stdout()
  }
}