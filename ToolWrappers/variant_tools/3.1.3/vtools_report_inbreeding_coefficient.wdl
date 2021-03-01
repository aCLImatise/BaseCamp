version 1.0

task VtoolsReportInbreedingCoefficient {
  input {
    Boolean? samples
    String? maf_field
    String? verbosity
  }
  command <<<
    vtools_report inbreeding_coefficient \
      ~{if (samples) then "--samples" else ""} \
      ~{if defined(maf_field) then ("--maf_field " +  '"' + maf_field + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    samples: "[SAMPLES [SAMPLES ...]]\\nConditions based on which samples are selected to have\\ninbreeding coefficients calculated. Default to all\\nsamples."
    maf_field: "Name of the field that holds minor allele frequency\\nfor sample variants, which is the field name for\\ncommand 'vtools update table --from_stat\\n\\\"maf_field=maf()\\\" --samples ...'."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}