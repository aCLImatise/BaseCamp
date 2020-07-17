version 1.0

task BedparseValidateFormatBedfile {
  input {
    Boolean? fix_separators
  }
  command <<<
    bedparse validateFormat bedfile \
      ~{true="--fixSeparators" false="" fix_separators}
  >>>
  parameter_meta {
    fix_separators: ""
  }
}