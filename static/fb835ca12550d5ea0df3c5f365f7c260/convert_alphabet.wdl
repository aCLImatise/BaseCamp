version 1.0

task ConvertAlphabet.py {
  input {
    String iI
    String oO
    Boolean dD
    Boolean rR
    String? inputInputFastX
    String? outputOutputFastX
  }
  command <<<
    convert_alphabet.py \
      ~{inputInputFastX} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="-R" false="" rR} \
      ~{outputOutputFastX}
  >>>
}