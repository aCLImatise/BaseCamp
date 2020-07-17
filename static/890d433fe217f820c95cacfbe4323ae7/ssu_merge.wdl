version 1.0

task SsuMerge {
  input {
    Boolean? force_allow_clobbering
    Boolean? rf_only
    Boolean? keep
    Boolean? input_alignments_interleaved
    Boolean? dna
    Boolean? options
    String output_dir_created_by_ssu_prep
  }
  command <<<
    ssu-merge \
      ~{output_dir_created_by_ssu_prep} \
      ~{true="-f" false="" force_allow_clobbering} \
      ~{true="--rfonly" false="" rf_only} \
      ~{true="--keep" false="" keep} \
      ~{true="-i" false="" input_alignments_interleaved} \
      ~{true="--dna" false="" dna} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    force_allow_clobbering: ": force; allow file clobbering"
    rf_only: ": when merging alignments, only keep consensus (non-gap RF) columns"
    keep: ": don't remove original files after they have been merged"
    input_alignments_interleaved: ": input alignments are interleaved Stockholm format (not 1 line/seq)"
    dna: ": output alignments as DNA, default is RNA (even if input is DNA)"
    options: ""
    output_dir_created_by_ssu_prep: ""
  }
}