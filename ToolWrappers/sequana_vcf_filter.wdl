version 1.0

task SequanaVcfFilter {
  input {
    String or
  }
  command <<<
    sequana_vcf_filter \
      ~{or}
  >>>
  parameter_meta {
    or: "DP>30&<60  # to keep only values in the range [30-60]"
  }
  output {
    File out_stdout = stdout()
  }
}