version 1.0

task PairtoolsSelect {
  input {
    File? output_file_ends
    File? output_rest
    Boolean? send_comments_to
    File? chrom_subset
    String? startup_code
    Int? type_cast
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String quote
  }
  command <<<
    pairtools select \
      ~{quote} \
      ~{if defined(output_file_ends) then ("--output " +  '"' + output_file_ends + '"') else ""} \
      ~{if defined(output_rest) then ("--output-rest " +  '"' + output_rest + '"') else ""} \
      ~{if (send_comments_to) then "--send-comments-to" else ""} \
      ~{if defined(chrom_subset) then ("--chrom-subset " +  '"' + chrom_subset + '"') else ""} \
      ~{if defined(startup_code) then ("--startup-code " +  '"' + startup_code + '"') else ""} \
      ~{if defined(type_cast) then ("--type-cast " +  '"' + type_cast + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_ends: "output file. If the path ends with .gz or\\n.lz4, the output is pbgzip-/lz4c-compressed.\\nBy default, the output is printed into\\nstdout."
    output_rest: "output file for pairs of other types.  If\\nthe path ends with .gz or .lz4, the output\\nis pbgzip-/lz4c-compressed. By default, such\\npairs are dropped."
    send_comments_to: "[selected|rest|both|none]\\nWhich of the outputs should receive header\\nand comment lines  [default: both]"
    chrom_subset: "A path to a chromosomes file (tab-separated,\\n1st column contains chromosome names)\\ncontaining a chromosome subset of interest.\\nIf provided, additionally filter pairs with\\nboth sides originating from the provided\\nsubset of chromosomes. This operation\\nmodifies the #chromosomes: and #chromsize:\\nheader fields accordingly."
    startup_code: "An auxiliary code to execute before\\nfiltering. Use to define functions that can\\nbe evaluated in the CONDITION statement"
    type_cast: "...  Cast a given column to a given type. By\\ndefault, only pos and mapq are cast to int,\\nother columns are kept as str. Provide as -t\\n<column_name> <type>, e.g. -t read_len1 int.\\nMultiple entries are allowed."
    nproc_in: "Number of processes used by the auto-guessed\\ninput decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed\\noutput compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdin. Must read\\ninput from stdin and print output into\\nstdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdout. Must\\nread input from stdin and print output into\\nstdout. EXAMPLE: pbgzip -c -n 8"
    quote: "CONDITION with single quotes, and use double quotes for string"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_ends = "${in_output_file_ends}"
    File out_output_rest = "${in_output_rest}"
  }
}