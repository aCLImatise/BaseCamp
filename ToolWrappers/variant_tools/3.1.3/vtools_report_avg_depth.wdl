version 1.0

task VtoolsReportAvgDepth {
  input {
    Int? num_field
    String? depth_field
    Boolean? group_by
    String? verbosity
  }
  command <<<
    vtools_report avg_depth \
      ~{if defined(num_field) then ("--num_field " +  '"' + num_field + '"') else ""} \
      ~{if defined(depth_field) then ("--depth_field " +  '"' + depth_field + '"') else ""} \
      ~{if (group_by) then "--group_by" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_field: "Name of the field that holds sample variant count,\\nwhich is the field name for command 'vtools update\\ntable --from_stat \\\"num=#(alt)\\\"'."
    depth_field: "Name of the field that holds average depth of each\\nvariant, which is the field name for command 'vtools\\nupdate table --from_stat \\\"meanDP=avg(DP_geno)\\\"'."
    group_by: "[GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\\nOutput average depth for each group, for example, '--\\ngroup_by NUM_FIELD to output depth for each sample\\nvariant frequency (count)."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}