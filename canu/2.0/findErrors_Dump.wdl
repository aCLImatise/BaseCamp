version 1.0

task FindErrorsDump {
  input {
    File? r
  }
  command <<<
    findErrors_Dump \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}