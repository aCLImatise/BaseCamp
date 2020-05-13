version 1.0

task SgaRewriteEvidenceBam {
  input {
    Boolean verboseVerbose
    File fastFastQ
    File mergeMergeBam
    File outfileOutfile
  }
  command <<<
    sga rewrite-evidence-bam \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(mergeMergeBam) then ("--merge-bam " +  '"' + mergeMergeBam + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}