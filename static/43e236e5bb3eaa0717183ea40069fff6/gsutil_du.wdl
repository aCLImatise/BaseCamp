version 1.0

task GsutilDu {
  input {
    Boolean? ends_output_line
    Boolean? includes_noncurrent_object
    Boolean? includes_grand_total
    Boolean? pattern_exclude_reporting
    Boolean? displays_only_total
    Boolean? similar_excludes_patterns
  }
  command <<<
    gsutil du \
      ~{true="-0" false="" ends_output_line} \
      ~{true="-a" false="" includes_noncurrent_object} \
      ~{true="-c" false="" includes_grand_total} \
      ~{true="-e" false="" pattern_exclude_reporting} \
      ~{true="-s" false="" displays_only_total} \
      ~{true="-X" false="" similar_excludes_patterns}
  >>>
  parameter_meta {
    ends_output_line: "Ends each output line with a 0 byte rather than a newline. This can be useful to make the output more easily machine-readable."
    includes_noncurrent_object: "Includes non-current object versions / generations in the listing (only useful with a versioning-enabled bucket). Also prints generation and metageneration for each listed object."
    includes_grand_total: "Includes a grand total at the end of the output."
    pattern_exclude_reporting: "A pattern to exclude from reporting. Example: -e \"*.o\" would exclude any object that ends in \".o\". Can be specified multiple times."
    displays_only_total: "Displays only the grand total for each argument."
    similar_excludes_patterns: "Similar to -e, but excludes patterns from the given file. The patterns to exclude should be one per line."
  }
}