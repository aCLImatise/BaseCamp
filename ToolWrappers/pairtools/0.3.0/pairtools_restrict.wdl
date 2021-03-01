version 1.0

task PairtoolsRestrict {
  input {
    File? frags
    File? output_file_path
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String the
  }
  command <<<
    pairtools restrict \
      ~{the} \
      ~{if defined(frags) then ("--frags " +  '"' + frags + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    frags: "a tab-separated BED file with the positions of\\nrestriction fragments (chrom, start, end). Can be\\ngenerated using cooler digest.  [required]"
    output_file_path: "output .pairs/.pairsam file. If the path ends with\\n.gz/.lz4, the output is compressed by pbgzip/lz4c. By\\ndefault, the output is printed into stdout."
    nproc_in: "Number of processes used by the auto-guessed input\\ndecompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output\\ncompressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided,\\nfully overrides the auto-guessed command. Does not work\\nwith stdin. Must read input from stdin and print output\\ninto stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided,\\nfully overrides the auto-guessed command. Does not work\\nwith stdout. Must read input from stdin and print\\noutput into stdout. EXAMPLE: pbgzip -c -n 8"
    the: "input is decompressed by pbgzip/lz4c. By default, the input is read"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}