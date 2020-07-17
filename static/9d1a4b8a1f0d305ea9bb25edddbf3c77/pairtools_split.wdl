version 1.0

task PairtoolsSplit {
  input {
    String? output_pairs
    String? output_sam
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String from
  }
  command <<<
    pairtools split \
      ~{from} \
      ~{if defined(output_pairs) then ("--output-pairs " +  '"' + output_pairs + '"') else ""} \
      ~{if defined(output_sam) then ("--output-sam " +  '"' + output_sam + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    output_pairs: "output pairs file. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. If -, pairs are printed to stdout. If not specified, pairs are dropped."
    output_sam: "output sam file. If the path ends with .bam, the output is compressed into a bam file. If -, sam entries are printed to stdout. If not specified, sam entries are dropped."
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    from: "stdin."
  }
}