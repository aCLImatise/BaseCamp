version 1.0

task AMUSEDKS {
  input {
    Boolean nuNu
  }
  command <<<
    AMUSED-KS \
      ~{true="-nu" false="" nuNu}
  >>>
}