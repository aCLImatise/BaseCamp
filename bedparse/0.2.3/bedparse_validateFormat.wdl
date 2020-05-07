version 1.0

task BedparseValidateFormat {
  input {
    Boolean fixFixSeparators
  }
  command <<<
    bedparse validateFormat \
      ~{true="--fixSeparators" false="" fixFixSeparators}
  >>>
}