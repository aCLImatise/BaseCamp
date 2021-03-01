version 1.0

task ExtractReads {
  input {
    File? output_results_given
    Boolean? prints_version_number
  }
  command <<<
    extract_reads \
      ~{if defined(output_results_given) then ("-o " +  '"' + output_results_given + '"') else ""} \
      ~{if (prints_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_results_given: ": Output results in the given file [default=stdout]"
    prints_version_number: ": prints the version number."
  }
  output {
    File out_stdout = stdout()
    File out_output_results_given = "${in_output_results_given}"
  }
}