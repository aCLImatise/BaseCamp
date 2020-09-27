version 1.0

task VtoolsReportTransRatio {
  input {
    Int? num_field
    Boolean? group_by
    String? verbosity
  }
  command <<<
    vtools_report trans_ratio \
      ~{if defined(num_field) then ("--num_field " +  '"' + num_field + '"') else ""} \
      ~{if (group_by) then "--group_by" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    num_field: "Name of the field that holds sample variant count,\\nwhich is the field name for command 'vtools update\\ntable --from_stat \\\"num=#(alt)\\\"'."
    group_by: "[GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\\nOutput transition/transversion rate for groups of\\nvariants. e.g. --group_by num for each sample variant\\nfrequency group."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}