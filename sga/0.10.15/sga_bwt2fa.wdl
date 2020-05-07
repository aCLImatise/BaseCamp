version 1.0

task SgaBwt2fa {
  input {
    Boolean verboseVerbose
    File outfileOutfile
    String prefixPrefix
  }
  command <<<
    sga bwt2fa \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}