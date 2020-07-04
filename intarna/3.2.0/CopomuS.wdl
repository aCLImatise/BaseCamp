version 1.0

task CopomuS.py {
  input {
    String? query
    String? target
    String? qid_xpos_zero
    String? tid_xpos_zero
    String? measure
    String? candidate_selection
    String? candidate_filter
    String? generator
    String? mutation_encoding
    Boolean? file_output_written
    String? delimiter
    String? parameter_file
    String? threads
  }
  command <<<
    CopomuS.py \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(qid_xpos_zero) then ("--qIdxPos0 " +  '"' + qid_xpos_zero + '"') else ""} \
      ~{if defined(tid_xpos_zero) then ("--tIdxPos0 " +  '"' + tid_xpos_zero + '"') else ""} \
      ~{if defined(measure) then ("--measure " +  '"' + measure + '"') else ""} \
      ~{if defined(candidate_selection) then ("--candidateSelection " +  '"' + candidate_selection + '"') else ""} \
      ~{if defined(candidate_filter) then ("--candidateFilter " +  '"' + candidate_filter + '"') else ""} \
      ~{if defined(generator) then ("--generator " +  '"' + generator + '"') else ""} \
      ~{if defined(mutation_encoding) then ("--mutationEncoding " +  '"' + mutation_encoding + '"') else ""} \
      ~{true="-o" false="" file_output_written} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameterFile " +  '"' + parameter_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    query: "The query sequence."
    target: "The target sequence."
    qid_xpos_zero: "The starting index for the query. (Default: 1)"
    tid_xpos_zero: "The starting index for the target. (Default: 1)"
    measure: "Which measure to add to the output, can be used multiple times. Output will be sorted in order of measures specified. (Default: ['mfeCover', 'E', 'minDeltaE'])"
    candidate_selection: "Defines the method used to select candidate base pairs. (Default: mfe)"
    candidate_filter: "Filters candidate base pairs, can be used multiple times. (Default: [])"
    generator: "Defines the method used for generating mutated sequences. (Default: flip)"
    mutation_encoding: "Allows direct candidate selection by specifying a mutation encoding. Overwrites options -s, -f, and -g"
    file_output_written: "[OUTPUT], --output [OUTPUT] Which file the output should be written to. (Default: STDOUT)"
    delimiter: "Defines the delimiter used to separate columns in the output, default tab. (Default: \t)"
    parameter_file: "Optional parameter file for IntaRNA to provide further parameters and prediction constraints."
    threads: "Threads used for IntaRNA call"
  }
}