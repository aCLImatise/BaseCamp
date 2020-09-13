version 1.0

task EasypqpConvertUniMod {
  input {
    String easy_pqp
    String convert
  }
  command <<<
    easypqp convert UniMod_ \
      ~{easy_pqp} \
      ~{convert}
  >>>
  parameter_meta {
    easy_pqp: ""
    convert: ""
  }
  output {
    File out_stdout = stdout()
  }
}