version 1.0

task ConvertZeroOneBasedOPTIONSINPUTFILE {
  input {
    Boolean toToBase
    Boolean headerHeader
  }
  command <<<
    convert_zero_one_based OPTIONS INPUT_FILE \
      ~{true="--to-base" false="" toToBase} \
      ~{true="--header" false="" headerHeader}
  >>>
}