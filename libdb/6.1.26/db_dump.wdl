version 1.0

task DbDump {
  input {
    Boolean? bkl_npr_rv
  }
  command <<<
    db_dump \
      ~{true="-bklNprRV" false="" bkl_npr_rv}
  >>>
  parameter_meta {
    bkl_npr_rv: ""
  }
}