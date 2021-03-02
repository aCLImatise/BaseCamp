version 1.0

task PairtoolsFlip {
  input {
    File? chrom_s_path
    File? output_file_ends
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String? pairs_path
  }
  command <<<
    pairtools flip \
      ~{pairs_path} \
      ~{if defined(chrom_s_path) then ("--chroms-path " +  '"' + chrom_s_path + '"') else ""} \
      ~{if defined(output_file_ends) then ("--output " +  '"' + output_file_ends + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chrom_s_path: "Chromosome order used to flip interchromosomal\\nmates: path to a chromosomes file (e.g. UCSC\\nchrom.sizes or similar) whose first column lists\\nscaffold names. Any scaffolds not listed will be\\nordered lexicographically following the names\\nprovided.  [required]"
    output_file_ends: "output file. If the path ends with .gz or .lz4, the\\noutput is pbgzip-/lz4c-compressed. By default, the\\noutput is printed into stdout."
    nproc_in: "Number of processes used by the auto-guessed input\\ndecompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output\\ncompressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided,\\nfully overrides the auto-guessed command. Does not\\nwork with stdin. Must read input from stdin and\\nprint output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided,\\nfully overrides the auto-guessed command. Does not\\nwork with stdout. Must read input from stdin and\\nprint output into stdout. EXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_ends = "${in_output_file_ends}"
  }
}