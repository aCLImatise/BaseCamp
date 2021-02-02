version 1.0

task Anviscriptgetshortreadsmatchingsomething {
  input {
    File? s
    String? match_sequence
    Int? min_remainder_length
    String? sample_name
    Directory? output_directory
    Boolean? report_raw
    Int? stop_after
    String fast_q_files
  }
  command <<<
    anvi_script_get_short_reads_matching_something \
      ~{fast_q_files} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(match_sequence) then ("--match-sequence " +  '"' + match_sequence + '"') else ""} \
      ~{if defined(min_remainder_length) then ("--min-remainder-length " +  '"' + min_remainder_length + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (report_raw) then "--report-raw" else ""} \
      ~{if defined(stop_after) then ("--stop-after " +  '"' + stop_after + '"') else ""}
  >>>
  parameter_meta {
    s: "[-O PATH]"
    match_sequence: "SEQUENCE\\nShort sequence to look for.."
    min_remainder_length: "Minimum lenght of the remainder of the read after the\\nmatch. If your short read is XXXMMMMMMYYYYYYYYYYYYYY,\\nwhere M indicates nucleotides of matchhing sequence,\\nmin remainder length is len(Y). Default is 60."
    sample_name: "A short sample name (use a single word without spaces\\nor fancy chars)"
    output_directory: "Output directory for results to be stored. The default\\nis the current working directory."
    report_raw: "Just report them raw. Don't bother trimming."
    stop_after: "Stop after X number of hits because who needs data."
    fast_q_files: "One or more FASTQ formatted files"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}