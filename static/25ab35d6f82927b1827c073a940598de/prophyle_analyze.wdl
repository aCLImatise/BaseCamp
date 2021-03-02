version 1.0

task ProphyleAnalyze {
  input {
    Boolean? statistics_use_computation
    Boolean? input_format_assignments
    Boolean? advanced_configuration_dictionary
  }
  command <<<
    prophyle analyze \
      ~{if (statistics_use_computation) then "-s" else ""} \
      ~{if (input_format_assignments) then "-f" else ""} \
      ~{if (advanced_configuration_dictionary) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    statistics_use_computation: "['w', 'u', 'wl', 'ul']\\nstatistics to use for the computation of\\nhistograms: w (default) => weighted assignments; u\\n=> unique assignments, non-weighted; wl => weighted\\nassignments, propagated to leaves; ul => unique\\nassignments, propagated to leaves."
    input_format_assignments: "['sam', 'bam', 'cram', 'uncompressed_bam', 'kraken', 'histo']\\nInput format of assignments [auto]"
    advanced_configuration_dictionary: "[STR [STR ...]]       advanced configuration (a JSON dictionary)"
  }
  output {
    File out_stdout = stdout()
  }
}