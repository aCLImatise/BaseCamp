version 1.0

task PairtoolsSample {
  input {
    String? output_file_path
    Int? seed
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String fraction
    String? pairs_path
  }
  command <<<
    pairtools sample \
      ~{fraction} \
      ~{pairs_path} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    output_file_path: "output file. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. By default, the output is printed into stdout."
    seed: "the seed of the random number generator."
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    fraction: ""
    pairs_path: ""
  }
}