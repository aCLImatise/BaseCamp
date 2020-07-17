version 1.0

task ChiraQuantify.py {
  input {
    Boolean? _bed_input
    Boolean? _mergedbed_input
    Boolean? _outdir_output
    Boolean? cs
    Boolean? ls
    Boolean? _emthreshold_maximum
    Boolean? build_crls_too
  }
  command <<<
    chira_quantify.py \
      ~{true="-b" false="" _bed_input} \
      ~{true="-m" false="" _mergedbed_input} \
      ~{true="-o" false="" _outdir_output} \
      ~{true="-cs" false="" cs} \
      ~{true="-ls" false="" ls} \
      ~{true="-e" false="" _emthreshold_maximum} \
      ~{true="--build_crls_too" false="" build_crls_too}
  >>>
  parameter_meta {
    _bed_input: ", --bed            Input BED file (default: None)"
    _mergedbed_input: ", --merged_bed     Input merged BED file (default: None)"
    _outdir_output: ", --outdir         Output file containing merged alignments (default: None)"
    cs: ", --crl_share     Minimum fraction of reads of a locus that must overlap with all CRL loci inorder to merge it into that CRL. (default: 0.7)"
    ls: ", --min_locus_size  Minimum number of reads a locus should have in order to participate in CRL creation.Always set this value relative to your sequencing depth. Setting this to lower leadsCRLs of random multimappings Also consider setting the --crl_share option along with this (default: 10)"
    _emthreshold_maximum: ", --em_threshold   The maximum difference of transcripts expression between two consecutive iterations of EM algorithm to converge. (default: 0.1)"
    build_crls_too: "Create CRLs too (default: False)"
  }
}