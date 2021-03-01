version 1.0

task PairtoolsStats {
  input {
    File? output_stats_tsv
    Boolean? merge
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String merge_dot
  }
  command <<<
    pairtools stats \
      ~{merge_dot} \
      ~{if defined(output_stats_tsv) then ("--output " +  '"' + output_stats_tsv + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_stats_tsv: "output stats tsv file."
    merge: "If specified, merge multiple input stats files instead\\nof calculating statistics of a .pairs/.pairsam file.\\nMerging is performed via summation of all overlapping\\nstatistics. Non-overlapping statistics are appended to\\nthe end of the file."
    nproc_in: "Number of processes used by the auto-guessed input\\ndecompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output\\ncompressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided,\\nfully overrides the auto-guessed command. Does not work\\nwith stdin. Must read input from stdin and print output\\ninto stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided,\\nfully overrides the auto-guessed command. Does not work\\nwith stdout. Must read input from stdin and print\\noutput into stdout. EXAMPLE: pbgzip -c -n 8"
    merge_dot: "The files with paths ending with .gz/.lz4 are decompressed by pbgzip/lz4c."
  }
  output {
    File out_stdout = stdout()
    File out_output_stats_tsv = "${in_output_stats_tsv}"
  }
}