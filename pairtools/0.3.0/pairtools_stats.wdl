version 1.0

task PairtoolsStats {
  input {
    String? output_stats_file
    Boolean? merge
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String? input_path
  }
  command <<<
    pairtools stats \
      ~{input_path} \
      ~{if defined(output_stats_file) then ("--output " +  '"' + output_stats_file + '"') else ""} \
      ~{true="--merge" false="" merge} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    output_stats_file: "output stats tsv file."
    merge: "If specified, merge multiple input stats files instead of calculating statistics of a .pairs/.pairsam file. Merging is performed via summation of all overlapping statistics. Non-overlapping statistics are appended to the end of the file."
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    input_path: ""
  }
}