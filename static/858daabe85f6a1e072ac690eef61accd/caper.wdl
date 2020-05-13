version 1.0

task Caper {
  input {
    File confConf
  }
  command <<<
    caper \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""}
  >>>
}