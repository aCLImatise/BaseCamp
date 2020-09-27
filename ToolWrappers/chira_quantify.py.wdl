version 1.0

task ChiraQuantifypy {
  input {
    Boolean? _bed_input
    Boolean? _mergedbed_input
    File? _outdir_output
    Boolean? cs
    Boolean? ls
    Boolean? _emthreshold_maximum
    Boolean? build_crls_too
  }
  command <<<
    chira_quantify_py \
      ~{if (_bed_input) then "-b" else ""} \
      ~{if (_mergedbed_input) then "-m" else ""} \
      ~{if (_outdir_output) then "-o" else ""} \
      ~{if (cs) then "-cs" else ""} \
      ~{if (ls) then "-ls" else ""} \
      ~{if (_emthreshold_maximum) then "-e" else ""} \
      ~{if (build_crls_too) then "--build_crls_too" else ""}
  >>>
  parameter_meta {
    _bed_input: ", --bed            Input BED file (default: None)"
    _mergedbed_input: ", --merged_bed     Input merged BED file (default: None)"
    _outdir_output: ", --outdir         Output file containing merged alignments (default:\\nNone)"
    cs: ", --crl_share     Minimum fraction of reads of a locus that must overlap\\nwith all CRL loci inorder to merge it into that CRL.\\n(default: 0.7)"
    ls: ", --min_locus_size\\nMinimum number of reads a locus should have in order\\nto participate in CRL creation.Always set this value\\nrelative to your sequencing depth. Setting this to\\nlower leadsCRLs of random multimappings Also consider\\nsetting the --crl_share option along with this\\n(default: 10)"
    _emthreshold_maximum: ", --em_threshold   The maximum difference of transcripts expression\\nbetween two consecutive iterations of EM algorithm to\\nconverge. (default: 0.1)"
    build_crls_too: "Create CRLs too (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out__outdir_output = "${in__outdir_output}"
  }
}