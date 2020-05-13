version 1.0

task MsslookupMs1quant {
  input {
    Array[String]+ iI
    String dbfileDbfile
    Array[String]+ spectraSpectra
    String quantQuantType
    String rtRtToL
    String mzMzToL
    String mzMzToLtype
  }
  command <<<
    msslookup ms1quant \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(spectraSpectra) then ("--spectra " +  '"' + spectraSpectra + '"') else ""} \
      ~{if defined(quantQuantType) then ("--quanttype " +  '"' + quantQuantType + '"') else ""} \
      ~{if defined(rtRtToL) then ("--rttol " +  '"' + rtRtToL + '"') else ""} \
      ~{if defined(mzMzToL) then ("--mztol " +  '"' + mzMzToL + '"') else ""} \
      ~{if defined(mzMzToLtype) then ("--mztoltype " +  '"' + mzMzToLtype + '"') else ""}
  >>>
}