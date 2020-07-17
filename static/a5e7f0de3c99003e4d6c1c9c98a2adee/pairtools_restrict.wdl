version 1.0

task PairtoolsRestrict {
  input {
    String? frags
    String? output_file_path
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String? pairs_path
  }
  command <<<
    pairtools restrict \
      ~{pairs_path} \
      ~{if defined(frags) then ("--frags " +  '"' + frags + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    frags: "a tab-separated BED file with the positions of restriction fragments (chrom, start, end). Can be generated using cooler digest.  [required]"
    output_file_path: "output .pairs/.pairsam file. If the path ends with .gz/.lz4, the output is compressed by pbgzip/lz4c. By default, the output is printed into stdout."
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
}