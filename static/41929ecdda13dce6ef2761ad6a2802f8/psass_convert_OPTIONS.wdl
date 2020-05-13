version 1.0

task PsassConvertOPTIONS {
  input {
    String? inputInput
  }
  command <<<
    psass convert OPTIONS \
      ~{inputInput}
  >>>
}