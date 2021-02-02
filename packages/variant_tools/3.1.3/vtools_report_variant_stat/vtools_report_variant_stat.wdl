version 1.0

task VtoolsReportVariantStat {
  input {
    Boolean? limiting_variants_samples
    Boolean? group_samples_certain
    String? verbosity
    String calculated_dot
  }
  command <<<
    vtools_report variant_stat \
      ~{calculated_dot} \
      ~{if (limiting_variants_samples) then "-s" else ""} \
      ~{if (group_samples_certain) then "-g" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    limiting_variants_samples: "[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]\\nLimiting variants from samples that match conditions\\nthat use columns shown in command 'vtools show sample'\\n(e.g. 'aff=1', 'filename like \\\"MG%\\\"'). If this\\nparameter is specified without a value, variants\\nbelonging to any of the samples will be counted. If\\nthis parameter is left unspecified, all variants,\\nincluding those that do not belong to any samples will\\nbe counted."
    group_samples_certain: "[GROUP_BY [GROUP_BY ...]], --group_by [GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\\nGroup samples by certain conditions such as 'aff=1'. A\\ncommon usage is to group variants by 'filename' and\\n'sample_name' so that variant statistics are outputted\\nfor each sample."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    calculated_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}