version 1.0

task GsutilDu {
  input {
    Boolean? ends_output_line
    Boolean? includes_noncurrent_versions
    Boolean? includes_grand_total
    Boolean? pattern_exclude_reporting
    Boolean? displays_only_total
    Boolean? similar_excludes_patterns
  }
  command <<<
    gsutil du \
      ~{if (ends_output_line) then "-0" else ""} \
      ~{if (includes_noncurrent_versions) then "-a" else ""} \
      ~{if (includes_grand_total) then "-c" else ""} \
      ~{if (pattern_exclude_reporting) then "-e" else ""} \
      ~{if (displays_only_total) then "-s" else ""} \
      ~{if (similar_excludes_patterns) then "-X" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ends_output_line: "Ends each output line with a 0 byte rather than a newline. This\\ncan be useful to make the output more easily machine-readable."
    includes_noncurrent_versions: "Includes non-current object versions / generations in the listing\\n(only useful with a versioning-enabled bucket). Also prints\\ngeneration and metageneration for each listed object."
    includes_grand_total: "Includes a grand total at the end of the output."
    pattern_exclude_reporting: "A pattern to exclude from reporting. Example: -e \\\"*.o\\\" would\\nexclude any object that ends in \\\".o\\\". Can be specified multiple\\ntimes."
    displays_only_total: "Displays only the grand total for each argument."
    similar_excludes_patterns: "Similar to -e, but excludes patterns from the given file. The\\npatterns to exclude should be one per line."
  }
  output {
    File out_stdout = stdout()
  }
}