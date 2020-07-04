version 1.0

task AnviScriptGetShortReadsMatchingSomething {
  input {
    Int? min_remainder_length
    String? sample_name
    File? output_directory
    Boolean? report_raw
    Int? stop_after
    Boolean? match_sequence
    String fast_q_files
  }
  command <<<
    anvi-script-get-short-reads-matching-something \
      ~{fast_q_files} \
      ~{if defined(min_remainder_length) then ("--min-remainder-length " +  '"' + min_remainder_length + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--report-raw" false="" report_raw} \
      ~{if defined(stop_after) then ("--stop-after " +  '"' + stop_after + '"') else ""} \
      ~{true="--match-sequence" false="" match_sequence}
  >>>
  parameter_meta {
    min_remainder_length: "Minimum lenght of the remainder of the read after the match. If your short read is XXXMMMMMMYYYYYYYYYYYYYY, where M indicates nucleotides of matchhing sequence, min remainder length is len(Y). Default is 60."
    sample_name: "A short sample name (use a single word without spaces or fancy chars)"
    output_directory: "Output directory for results to be stored. The default is the current working directory."
    report_raw: "Just report them raw. Don't bother trimming."
    stop_after: "Stop after X number of hits because who needs data."
    match_sequence: ""
    fast_q_files: "One or more FASTQ formatted files"
  }
}