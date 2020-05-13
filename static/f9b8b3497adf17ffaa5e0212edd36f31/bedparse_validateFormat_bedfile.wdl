version 1.0

task BedparseValidateFormatBedfile {
  input {
    Boolean fixFixSeparators
  }
  command <<<
    bedparse validateFormat bedfile \
      ~{true="--fixSeparators" false="" fixFixSeparators}
  >>>
}