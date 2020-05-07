version 1.0

task ConvertQr {
  input {
    String itIt
    String irIr
    String oO
    String prefixPrefix
    Int mfMf
    Int lL
    Boolean pP
  }
  command <<<
    convert_qr \
      ~{if defined(itIt) then ("--it " +  '"' + itIt + '"') else ""} \
      ~{if defined(irIr) then ("--ir " +  '"' + irIr + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(mfMf) then ("--mf " +  '"' + mfMf + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-p" false="" pP}
  >>>
}