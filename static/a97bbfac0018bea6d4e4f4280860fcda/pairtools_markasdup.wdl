version 1.0

task PairtoolsMarkasdup {
  input {
    File? output_pairsam_file
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String? pairs_am_path
  }
  command <<<
    pairtools markasdup \
      ~{pairs_am_path} \
      ~{if defined(output_pairsam_file) then ("--output " +  '"' + output_pairsam_file + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_pairsam_file: "output .pairsam file. If the path ends with .gz or\\n.lz4, the output is pbgzip-/lz4c-compressed. By\\ndefault, the output is printed into stdout."
    nproc_in: "Number of processes used by the auto-guessed input\\ndecompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output\\ncompressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided,\\nfully overrides the auto-guessed command. Does not work\\nwith stdin. Must read input from stdin and print output\\ninto stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided,\\nfully overrides the auto-guessed command. Does not work\\nwith stdout. Must read input from stdin and print\\noutput into stdout. EXAMPLE: pbgzip -c -n 8"
    pairs_am_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_pairsam_file = "${in_output_pairsam_file}"
  }
}