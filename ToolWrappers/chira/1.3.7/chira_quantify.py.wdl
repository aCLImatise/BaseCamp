version 1.0

task ChiraQuantifypy {
  input {
    Boolean? bed
    Boolean? merged_bed
    File? outdir
    Boolean? crl_share
    Boolean? min_locus_size
    Boolean? em_threshold
    Boolean? build_crls_too
  }
  command <<<
    chira_quantify_py \
      ~{if (bed) then "--bed" else ""} \
      ~{if (merged_bed) then "--merged_bed" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (crl_share) then "--crl_share" else ""} \
      ~{if (min_locus_size) then "--min_locus_size" else ""} \
      ~{if (em_threshold) then "--em_threshold" else ""} \
      ~{if (build_crls_too) then "--build_crls_too" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Input BED file (default: None)"
    merged_bed: "Input merged BED file (default: None)"
    outdir: "Output file containing merged alignments (default:\\nNone)"
    crl_share: "Minimum fraction of reads of a locus that must overlap\\nwith all CRL loci inorder to merge it into that CRL.\\n(default: 0.7)"
    min_locus_size: "Minimum number of reads a locus should have in order\\nto participate in CRL creation.Always set this value\\nrelative to your sequencing depth. Setting this to\\nlower leadsCRLs of random multimappings Also consider\\nsetting the --crl_share option along with this\\n(default: 10)"
    em_threshold: "The maximum difference of transcripts expression\\nbetween two consecutive iterations of EM algorithm to\\nconverge. (default: 0.1)"
    build_crls_too: "Create CRLs too (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}