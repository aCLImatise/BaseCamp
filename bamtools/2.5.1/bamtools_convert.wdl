version 1.0

task BamtoolsConvert {
  input {
    String inIn
    File listList
    String outOut
    String formatFormat
    String regionRegion
    String fastFastA
    Boolean mapMapQual
    Boolean noheaderNoheader
  }
  command <<<
    bamtools convert \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(formatFormat) then ("-format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(regionRegion) then ("-region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="-mapqual" false="" mapMapQual} \
      ~{true="-noheader" false="" noheaderNoheader}
  >>>
}