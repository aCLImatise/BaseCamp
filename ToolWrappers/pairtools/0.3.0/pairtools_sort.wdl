version 1.0

task PairtoolsSort {
  input {
    File? output_pairs_file
    Int? nproc
    Directory? tmpdir
    Int? memory
    Int? compress_program
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String pair_type_dot
  }
  command <<<
    pairtools sort \
      ~{pair_type_dot} \
      ~{if defined(output_pairs_file) then ("--output " +  '"' + output_pairs_file + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(compress_program) then ("--compress-program " +  '"' + compress_program + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_pairs_file: "output pairs file. If the path ends with .gz or\\n.lz4, the output is compressed by pbgzip or lz4,\\ncorrespondingly. By default, the output is printed\\ninto stdout."
    nproc: "Number of processes to split the sorting work"
    tmpdir: "Custom temporary folder for sorting intermediates."
    memory: "The amount of memory used by default.  [default:\\n2G]"
    compress_program: "A binary to compress temporary sorted chunks. Must\\ndecompress input when the flag -d is provided.\\nSuggested alternatives: gzip, lzop, lz4c, snzip. If\\n\\\"auto\\\", then use lz4c if available, and gzip\\notherwise.  [default: auto]"
    nproc_in: "Number of processes used by the auto-guessed input\\ndecompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output\\ncompressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If\\nprovided, fully overrides the auto-guessed command.\\nDoes not work with stdin. Must read input from\\nstdin and print output into stdout. EXAMPLE: pbgzip\\n-dc -n 3"
    cmd_out: "A command to compress the output file. If provided,\\nfully overrides the auto-guessed command. Does not\\nwork with stdout. Must read input from stdin and\\nprint output into stdout. EXAMPLE: pbgzip -c -n 8"
    pair_type_dot: "PAIRS_PATH : input .pairs/.pairsam file. If the path ends with .gz or"
  }
  output {
    File out_stdout = stdout()
    File out_output_pairs_file = "${in_output_pairs_file}"
  }
}