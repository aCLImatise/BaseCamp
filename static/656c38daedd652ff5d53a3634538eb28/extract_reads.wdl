version 1.0

task ExtractReads {
  input {
    String? output_results_given
    Boolean? prints_version_number
  }
  command <<<
    extract_reads \
      ~{if defined(output_results_given) then ("-o " +  '"' + output_results_given + '"') else ""} \
      ~{true="-v" false="" prints_version_number}
  >>>
  parameter_meta {
    output_results_given: ": Output results in the given file [default=stdout]"
    prints_version_number: ": prints the version number."
  }
}