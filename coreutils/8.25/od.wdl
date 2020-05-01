version 1.0

task Od {
  input {
    String addressAddressRadix
    Boolean endianEndian
    String skipSkipBytes
    String readReadBytes
    String stringsStrings
    String formatFormat
    Boolean outputOutputDuplicates
    Boolean wW
    Boolean aA
    Boolean bB
    Boolean cC
    Boolean dD
    String fF
    String iI
    String lL
    String oO
    String sS
    String xX
    String? bB
    String? kbKb
    String? kK
    String? mbMb
    String? mM
  }
  command <<<
    od \
      ~{bB} \
      ~{if defined(addressAddressRadix) then ("--address-radix " +  '"' + addressAddressRadix + '"') else ""} \
      ~{true="--endian" false="" endianEndian} \
      ~{if defined(skipSkipBytes) then ("--skip-bytes " +  '"' + skipSkipBytes + '"') else ""} \
      ~{if defined(readReadBytes) then ("--read-bytes " +  '"' + readReadBytes + '"') else ""} \
      ~{if defined(stringsStrings) then ("--strings " +  '"' + stringsStrings + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--output-duplicates" false="" outputOutputDuplicates} \
      ~{true="-w" false="" wW} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{kbKb} \
      ~{kK} \
      ~{mbMb} \
      ~{mM}
  >>>
}