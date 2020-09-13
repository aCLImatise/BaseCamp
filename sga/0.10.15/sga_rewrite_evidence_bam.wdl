version 1.0

task SgaRewriteevidencebam {
  input {
    Boolean? verbose
    File? fast_q
    File? merge_bam
    File? outfile
  }
  command <<<
    sga rewrite_evidence_bam \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(merge_bam) then ("--merge-bam " +  '"' + merge_bam + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    fast_q: "parse the read names and sequences from the fastq file in F (required)"
    merge_bam: "merge the evidence BAM alignments with the alignments in F"
    outfile: "write the new BAM file to F"
  }
  output {
    File out_stdout = stdout()
  }
}