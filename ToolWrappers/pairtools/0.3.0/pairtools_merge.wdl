version 1.0

task PairtoolsMerge {
  input {
    File? output_file_path
    Int? max_n_merge
    Directory? tmpdir
    Int? memory
    Int? compress_program
    Int? nproc
    Int? nproc_in
    Int? nproc_out
    Int? cmd_in
    Int? cmd_out
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_path: "output file. If the path ends with .gz/.lz4, the\\noutput is compressed by pbgzip/lz4c. By default,\\nthe output is printed into stdout."
    max_n_merge: "The maximal number of inputs merged at once. For\\nmore, store merged intermediates in temporary\\nfiles.  [default: 8]"
    tmpdir: "Custom temporary folder for merged intermediates."
    memory: "The amount of memory used by default.  [default:\\n2G]"
    compress_program: "A binary to compress temporary merged chunks. Must\\ndecompress input when the flag -d is provided.\\nSuggested alternatives: lz4c, gzip, lzop, snzip.\\nNOTE: fails silently if the command syntax is\\nwrong.   [default: ]"
    nproc: "Number of threads for merging.  [default: 8]"
    nproc_in: "Number of processes used by the auto-guessed input\\ndecompressing command.  [default: 1]"
    nproc_out: "Number of processes used by the auto-guessed output\\ncompressing command.  [default: 8]"
    cmd_in: "A command to decompress the input. If provided,\\nfully overrides the auto-guessed command. Does not\\nwork with stdin. Must read input from stdin and\\nprint output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output. If provided,\\nfully overrides the auto-guessed command. Does not\\nwork with stdout. Must read input from stdin and\\nprint output into stdout. EXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}