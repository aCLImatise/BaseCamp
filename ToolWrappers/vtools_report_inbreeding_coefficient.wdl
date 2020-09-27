version 1.0

task VtoolsReportInbreedingCoefficient {
  input {
    String? maf_field
    Boolean? samples
    String? verbosity
    String table
  }
  command <<<
    vtools_report inbreeding_coefficient \
      ~{table} \
      ~{if defined(maf_field) then ("--maf_field " +  '"' + maf_field + '"') else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    maf_field: "Name of the field that holds minor allele frequency\\nfor sample variants, which is the field name for\\ncommand 'vtools update table --from_stat\\n\\\"maf_field=maf()\\\" --samples ...'."
    samples: "[SAMPLES [SAMPLES ...]]\\nConditions based on which samples are selected to have\\ninbreeding coefficients calculated. Default to all\\nsamples."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    table: "Variants based on which individual inbreeding\\ncoefficients are evaluated."
  }
  output {
    File out_stdout = stdout()
  }
}