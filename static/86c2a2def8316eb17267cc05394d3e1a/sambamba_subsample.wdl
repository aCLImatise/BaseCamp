version 1.0

task SambambaSubsample {
  input {
    Boolean? type
    Boolean? max_cov
    String? set_output_file
    Boolean? remove
    String? logging
    String input_dot_bam
  }
  command <<<
    sambamba subsample \
      ~{input_dot_bam} \
      ~{true="--type" false="" type} \
      ~{true="--max-cov" false="" max_cov} \
      ~{if defined(set_output_file) then ("--output " +  '"' + set_output_file + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{if defined(logging) then ("--logging " +  '"' + logging + '"') else ""}
  >>>
  parameter_meta {
    type: "[fasthash]   Algorithm for subsampling (fasthash, default is none)"
    max_cov: "[depth]   Maximum coverage (approx)"
    set_output_file: "Set output file (default stdout)"
    remove: "Remove over sampled reads from output"
    logging: "Set logging to debug|info|warning|critical -nyi"
    input_dot_bam: ""
  }
}