version 1.0

task PairtoolsDedup {
  input {
    File? output_file_ends
    File? output_dups
    File? output_unmapped
    File? output_stats
    Int? max_mismatch
    Boolean? method
    String? sep
    String? comment_char
    Boolean? send_header_to
    Int? cone
    Int? c_two
    Int? p_one
    Int? p_two
    Int? s_one
    Int? s_two
    String? unmapped_chrom
    Boolean? mark_dups
    Int? extra_col_pair
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String? pairs_path
  }
  command <<<
    pairtools dedup \
      ~{pairs_path} \
      ~{if defined(output_file_ends) then ("--output " +  '"' + output_file_ends + '"') else ""} \
      ~{if defined(output_dups) then ("--output-dups " +  '"' + output_dups + '"') else ""} \
      ~{if defined(output_unmapped) then ("--output-unmapped " +  '"' + output_unmapped + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if (send_header_to) then "--send-header-to" else ""} \
      ~{if defined(cone) then ("--c1 " +  '"' + cone + '"') else ""} \
      ~{if defined(c_two) then ("--c2 " +  '"' + c_two + '"') else ""} \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(p_two) then ("--p2 " +  '"' + p_two + '"') else ""} \
      ~{if defined(s_one) then ("--s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("--s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(unmapped_chrom) then ("--unmapped-chrom " +  '"' + unmapped_chrom + '"') else ""} \
      ~{if (mark_dups) then "--mark-dups" else ""} \
      ~{if defined(extra_col_pair) then ("--extra-col-pair " +  '"' + extra_col_pair + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_ends: "output file for pairs after duplicate\\nremoval. If the path ends with .gz or .lz4,\\nthe output is pbgzip-/lz4c-compressed. By\\ndefault, the output is printed into stdout."
    output_dups: "output file for duplicated pairs.  If the\\npath ends with .gz or .lz4, the output is\\npbgzip-/lz4c-compressed. If the path is the\\nsame as in --output or -, output duplicates\\ntogether  with deduped pairs. By default,\\nduplicates are dropped."
    output_unmapped: "output file for unmapped pairs. If the path\\nends with .gz or .lz4, the output is\\npbgzip-/lz4c-compressed. If the path is the\\nsame as in --output or -, output unmapped\\npairs together with deduped pairs. If the\\npath is the same as --output-dups, output\\nunmapped reads together with dups. By\\ndefault, unmapped pairs are dropped."
    output_stats: "output file for duplicate statistics.  If\\nfile exists, it will be open in the append\\nmode. If the path ends with .gz or .lz4, the\\noutput is pbgzip-/lz4c-compressed. By\\ndefault, statistics are not printed."
    max_mismatch: "Pairs with both sides mapped within this\\ndistance (bp) from each other are considered\\nduplicates.  [default: 3]"
    method: "[max|sum]              define the mismatch as either the max or the\\nsum of the mismatches ofthe genomic\\nlocations of the both sides of the two\\ncompared molecules  [default: max]"
    sep: "Separator (\\t, \\v, etc. characters are\\nsupported, pass them in quotes)"
    comment_char: "The first character of comment lines"
    send_header_to: "[dups|dedup|both|none]\\nWhich of the outputs should receive header\\nand comment lines"
    cone: "Chrom 1 column; default 1"
    c_two: "Chrom 2 column; default 3"
    p_one: "Position 1 column; default 2"
    p_two: "Position 2 column; default 4"
    s_one: "Strand 1 column; default 5"
    s_two: "Strand 2 column; default 6"
    unmapped_chrom: "Placeholder for a chromosome on an unmapped\\nside; default !"
    mark_dups: "If specified, duplicate pairs are marked as\\nDD in \\\"pair_type\\\" and as a duplicate in the\\nsam entries."
    extra_col_pair: "Extra columns that also must match for two\\npairs to be marked as duplicates. Can be\\neither provided as 0-based column indices or\\nas column names (requires the \\\"#columns\\\"\\nheader field). The option can be provided\\nmultiple times if multiple column pairs must\\nmatch. Example: --extra-col-pair \\\"phase1\\\"\\n\\\"phase2\\\""
    nproc_in: "Number of processes used by the auto-guessed\\ninput decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed\\noutput compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdin. Must read\\ninput from stdin and print output into\\nstdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdout. Must\\nread input from stdin and print output into\\nstdout. EXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_ends = "${in_output_file_ends}"
    File out_output_dups = "${in_output_dups}"
    File out_output_unmapped = "${in_output_unmapped}"
    File out_output_stats = "${in_output_stats}"
  }
}