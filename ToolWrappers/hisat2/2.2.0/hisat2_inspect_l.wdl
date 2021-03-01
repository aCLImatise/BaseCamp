version 1.0

task Hisat2inspectl {
  input {
    Int? across
    Boolean? summary
    Boolean? names
    Boolean? snp
    Boolean? ss
    Boolean? ss_all
    Boolean? exon
    Boolean? ht_two_ref
    Boolean? verbose
    Int his_at_two_inspect
  }
  command <<<
    hisat2_inspect_l \
      ~{his_at_two_inspect} \
      ~{if defined(across) then ("--across " +  '"' + across + '"') else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (snp) then "--snp" else ""} \
      ~{if (ss) then "--ss" else ""} \
      ~{if (ss_all) then "--ss-all" else ""} \
      ~{if (exon) then "--exon" else ""} \
      ~{if (ht_two_ref) then "--ht2-ref" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    across: "Number of characters across in FASTA output (default: 60)"
    summary: "Print summary incl. ref names, lengths, index properties"
    names: "Print reference sequence names only"
    snp: "Print SNPs"
    ss: "Print splice sites"
    ss_all: "Print splice sites including those not in the global index"
    exon: "Print exons"
    ht_two_ref: "Reconstruct reference from .ht2l (slow, preserves colors)"
    verbose: "Verbose output (for debugging)"
    his_at_two_inspect: ""
  }
  output {
    File out_stdout = stdout()
  }
}