version 1.0

task Freec {
  input {
    String confConf
  }
  command <<<
    freec \
      ~{if defined(confConf) then ("-conf " +  '"' + confConf + '"') else ""}
  >>>
}