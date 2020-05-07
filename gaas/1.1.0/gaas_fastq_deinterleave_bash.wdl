version 1.0

task GaasFastqDeinterleaveBash.pl {
  input {
    String inputInput
    Boolean outputOutputSuffix1
    Boolean outputOutputSuffix2
    String gzipGzip
    Boolean threadThread
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_fastq_deinterleave_bash.pl \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--output_suffix1" false="" outputOutputSuffix1} \
      ~{true="--output_suffix2" false="" outputOutputSuffix2} \
      ~{if defined(gzipGzip) then ("--gzip " +  '"' + gzipGzip + '"') else ""} \
      ~{true="--thread" false="" threadThread} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}