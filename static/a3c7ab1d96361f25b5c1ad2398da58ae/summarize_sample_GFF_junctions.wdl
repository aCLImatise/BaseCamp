version 1.0

task SummarizeSampleGFFJunctions.pyOutputPrefixOutputPrefixOutputPrefix {
  input {
    String? configConfig
    String? outputOutputPrefix
  }
  command <<<
    summarize_sample_GFF_junctions.py output_prefix output_prefix output_prefix \
      ~{configConfig} \
      ~{outputOutputPrefix}
  >>>
}