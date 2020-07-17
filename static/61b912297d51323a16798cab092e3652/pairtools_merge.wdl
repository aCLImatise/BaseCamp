version 1.0

task PairtoolsMerge {
  input {
    String? output_file_path
    Int? max_n_merge
    String? tmpdir
    String? memory
    String? compress_program
    Int? nproc
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String? pairs_path
  }
  command <<<
    pairtools merge \
      ~{pairs_path} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(max_n_merge) then ("--max-nmerge " +  '"' + max_n_merge + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(compress_program) then ("--compress-program " +  '"' + compress_program + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    output_file_path: "output file. If the path ends with .gz/.lz4, the output is compressed by pbgzip/lz4c. By default, the output is printed into stdout."
    max_n_merge: "The maximal number of inputs merged at once. For more, store merged intermediates in temporary files.  [default: 8]"
    tmpdir: "Custom temporary folder for merged intermediates."
    memory: "The amount of memory used by default.  [default: 2G]"
    compress_program: "A binary to compress temporary merged chunks. Must decompress input when the flag -d is provided. Suggested alternatives: lz4c, gzip, lzop, snzip. NOTE: fails silently if the command syntax is wrong.   [default: ]"
    nproc: "Number of threads for merging.  [default: 8]"
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 1]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
}