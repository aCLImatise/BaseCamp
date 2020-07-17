version 1.0

task SfldPostprocess {
  input {
    Boolean? no_search
    Boolean? hmmer_path
    Boolean? alignments
    Boolean? dom
    Boolean? hmmer_out
    Boolean? site_info
    Boolean? format
    Boolean? o_file_output
  }
  command <<<
    sfld_postprocess \
      ~{true="--nosearch" false="" no_search} \
      ~{true="--hmmerpath" false="" hmmer_path} \
      ~{true="--alignments" false="" alignments} \
      ~{true="--dom" false="" dom} \
      ~{true="--hmmer-out" false="" hmmer_out} \
      ~{true="--site-info" false="" site_info} \
      ~{true="--format" false="" format} \
      ~{true="--output" false="" o_file_output}
  >>>
  parameter_meta {
    no_search: "| -S         don't run search if output files exist"
    hmmer_path: "| -p PATH    path to hmm* binaries (overrides $HMMER_PATH)"
    alignments: "| -a         HMMER alignment file"
    dom: "| -d         HMMER domtblout file"
    hmmer_out: "| -O         HMMER output file"
    site_info: "| -s         SFLD reside annotation file"
    format: "| -f FORMAT  output text format [not implemented]"
    o_file_output: "| -o FILE    output file (otherwise STDOUT)"
  }
}