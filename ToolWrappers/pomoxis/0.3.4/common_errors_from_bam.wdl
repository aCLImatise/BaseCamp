version 1.0

task CommonErrorsFromBam {
  input {
    String? output_prefix
  }
  command <<<
    common_errors_from_bam \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    output_prefix: "Prefix for outputs. (default: common_errors)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}