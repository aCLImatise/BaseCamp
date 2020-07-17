version 1.0

task PairtoolsSelect {
  input {
    String? output_file_path
    String? output_rest
    Boolean? send_comments_to
    String? chrom_subset
    String? startup_code
    String? type_cast
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String condition
    String? pairs_path
  }
  command <<<
    pairtools select \
      ~{condition} \
      ~{pairs_path} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(output_rest) then ("--output-rest " +  '"' + output_rest + '"') else ""} \
      ~{true="--send-comments-to" false="" send_comments_to} \
      ~{if defined(chrom_subset) then ("--chrom-subset " +  '"' + chrom_subset + '"') else ""} \
      ~{if defined(startup_code) then ("--startup-code " +  '"' + startup_code + '"') else ""} \
      ~{if defined(type_cast) then ("--type-cast " +  '"' + type_cast + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    output_file_path: "output file. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. By default, the output is printed into stdout."
    output_rest: "output file for pairs of other types.  If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. By default, such pairs are dropped."
    send_comments_to: "[selected|rest|both|none] Which of the outputs should receive header and comment lines  [default: both]"
    chrom_subset: "A path to a chromosomes file (tab-separated, 1st column contains chromosome names) containing a chromosome subset of interest. If provided, additionally filter pairs with both sides originating from the provided subset of chromosomes. This operation modifies the #chromosomes: and #chromsize: header fields accordingly."
    startup_code: "An auxiliary code to execute before filtering. Use to define functions that can be evaluated in the CONDITION statement"
    type_cast: "...  Cast a given column to a given type. By default, only pos and mapq are cast to int, other columns are kept as str. Provide as -t <column_name> <type>, e.g. -t read_len1 int. Multiple entries are allowed."
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    condition: ""
    pairs_path: ""
  }
}