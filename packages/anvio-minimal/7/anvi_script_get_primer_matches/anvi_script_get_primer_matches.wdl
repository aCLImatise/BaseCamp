version 1.0

task Anviscriptgetprimermatches {
  input {
    File? primer_sequences
    File? tabdelimited_file_are
    Int? min_remainder_length
    Boolean? report_raw
    Int? stop_after
    File? output_dir
    String oligo_typing_dot
    String _can_provide
    String short_reads_fast_a
  }
  command <<<
    anvi_script_get_primer_matches \
      ~{oligo_typing_dot} \
      ~{_can_provide} \
      ~{short_reads_fast_a} \
      ~{if defined(primer_sequences) then ("--primer-sequences " +  '"' + primer_sequences + '"') else ""} \
      ~{if defined(tabdelimited_file_are) then ("--samples-txt " +  '"' + tabdelimited_file_are + '"') else ""} \
      ~{if defined(min_remainder_length) then ("--min-remainder-length " +  '"' + min_remainder_length + '"') else ""} \
      ~{if (report_raw) then "--report-raw" else ""} \
      ~{if defined(stop_after) then ("--stop-after " +  '"' + stop_after + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    primer_sequences: "[-m INT]"
    tabdelimited_file_are: "A TAB-delimited file with columns ['sample', 'r1',\\n'r2'] or ['sample', 'group', 'r1', 'r2'] where `r1`\\nand `r2` columns are paths to compressed or flat FASTQ\\nfiles for each `sample` and `group` is an optional\\ncolumn for relevant applications where samples are\\naffiliated with one-word categorical variables that\\ndefine to which group they are assigned. (default:\\nNone)"
    min_remainder_length: "Minimum length of the remainder of the read after a\\nmatch. If your short read is XXXMMMMMMYYYYYYYYYYYYYY,\\nwhere Ms indicate the primer sequence, min remainder\\nlength is equal to the length of nucleotide matching\\nY. Default is 60."
    report_raw: "Just report them sequences. Don't bother trimming.\\n(default: False)"
    stop_after: "Stop after X number of hits because who needs data.\\n(default: 0)"
    output_dir: "Directory path for output files (default: None)"
    oligo_typing_dot: "🧀 Can consume: "
    _can_provide: "🍕 Can provide: "
    short_reads_fast_a: "🍺 More on `anvi-script-get-primer-matches`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}