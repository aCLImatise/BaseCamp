version 1.0

task FindErrorsDump {
  input {
    File rR
  }
  command <<<
    findErrors-Dump \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}