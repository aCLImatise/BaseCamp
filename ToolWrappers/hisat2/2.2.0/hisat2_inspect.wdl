version 1.0

task Hisat2inspect {
  input {
    Boolean? large_index
    Int? across
    Boolean? summary
    Boolean? names
    Boolean? snp
    Boolean? ss
    Boolean? ss_all
    Boolean? exon
    Boolean? ht_two_ref
    Boolean? verbose
  }
  command <<<
    hisat2_inspect \
      ~{if (large_index) then "--large-index" else ""} \
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
    large_index: "force inspection of the 'large' index, even if a\\n'small' one is present."
    across: "Number of characters across in FASTA output (default: 60)"
    summary: "Print summary incl. ref names, lengths, index properties"
    names: "Print reference sequence names only"
    snp: "Print SNPs"
    ss: "Print splice sites"
    ss_all: "Print splice sites including those not in the global index"
    exon: "Print exons"
    ht_two_ref: "Reconstruct reference from .ht2 (slow, preserves colors)"
    verbose: "Verbose output (for debugging)"
  }
  output {
    File out_stdout = stdout()
  }
}