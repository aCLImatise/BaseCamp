version 1.0

task PairtoolsFlip {
  input {
    String? chrom_s_path
    String? output_file_path
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String? pairs_path
  }
  command <<<
    pairtools flip \
      ~{pairs_path} \
      ~{if defined(chrom_s_path) then ("--chroms-path " +  '"' + chrom_s_path + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    chrom_s_path: "Chromosome order used to flip interchromosomal mates: path to a chromosomes file (e.g. UCSC chrom.sizes or similar) whose first column lists scaffold names. Any scaffolds not listed will be ordered lexicographically following the names provided.  [required]"
    output_file_path: "output file. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. By default, the output is printed into stdout."
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
}