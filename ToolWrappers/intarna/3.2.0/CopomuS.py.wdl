version 1.0

task CopomuSpy {
  input {
    String? query
    String? target
    Int? qid_xpos_zero
    Int? tid_xpos_zero
    String? measure
    String? candidate_selection
    String? candidate_filter
    String? generator
    String? mutation_encoding
    File? file_output_written
    String? delimiter
    File? parameter_file
    String? threads
  }
  command <<<
    CopomuS_py \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(qid_xpos_zero) then ("--qIdxPos0 " +  '"' + qid_xpos_zero + '"') else ""} \
      ~{if defined(tid_xpos_zero) then ("--tIdxPos0 " +  '"' + tid_xpos_zero + '"') else ""} \
      ~{if defined(measure) then ("--measure " +  '"' + measure + '"') else ""} \
      ~{if defined(candidate_selection) then ("--candidateSelection " +  '"' + candidate_selection + '"') else ""} \
      ~{if defined(candidate_filter) then ("--candidateFilter " +  '"' + candidate_filter + '"') else ""} \
      ~{if defined(generator) then ("--generator " +  '"' + generator + '"') else ""} \
      ~{if defined(mutation_encoding) then ("--mutationEncoding " +  '"' + mutation_encoding + '"') else ""} \
      ~{if (file_output_written) then "-o" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameterFile " +  '"' + parameter_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query: "The query sequence."
    target: "The target sequence."
    qid_xpos_zero: "The starting index for the query. (Default: 1)"
    tid_xpos_zero: "The starting index for the target. (Default: 1)"
    measure: "Which measure to add to the output, can be used\\nmultiple times. Output will be sorted in order of\\nmeasures specified. (Default: ['mfeCover', 'E',\\n'minDeltaE'])"
    candidate_selection: "Defines the method used to select candidate base\\npairs. (Default: mfe)"
    candidate_filter: "Filters candidate base pairs, can be used multiple\\ntimes. (Default: [])"
    generator: "Defines the method used for generating mutated\\nsequences. (Default: flip)"
    mutation_encoding: "Allows direct candidate selection by specifying a\\nmutation encoding. Overwrites options -s, -f, and -g"
    file_output_written: "[OUTPUT], --output [OUTPUT]\\nWhich file the output should be written to. (Default:\\nSTDOUT)"
    delimiter: "Defines the delimiter used to separate columns in the\\noutput, default tab. (Default: \\t)"
    parameter_file: "Optional parameter file for IntaRNA to provide further\\nparameters and prediction constraints."
    threads: "Threads used for IntaRNA call"
  }
  output {
    File out_stdout = stdout()
    File out_file_output_written = "${in_file_output_written}"
  }
}