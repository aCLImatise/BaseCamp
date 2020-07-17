version 1.0

task PairtoolsDedup {
  input {
    String? output_file_pairs
    String? output_dups
    String? output_unmapped
    String? output_stats
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
    String? extra_col_pair
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String? pairs_path
  }
  command <<<
    pairtools dedup \
      ~{pairs_path} \
      ~{if defined(output_file_pairs) then ("--output " +  '"' + output_file_pairs + '"') else ""} \
      ~{if defined(output_dups) then ("--output-dups " +  '"' + output_dups + '"') else ""} \
      ~{if defined(output_unmapped) then ("--output-unmapped " +  '"' + output_unmapped + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{true="--method" false="" method} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{true="--send-header-to" false="" send_header_to} \
      ~{if defined(cone) then ("--c1 " +  '"' + cone + '"') else ""} \
      ~{if defined(c_two) then ("--c2 " +  '"' + c_two + '"') else ""} \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(p_two) then ("--p2 " +  '"' + p_two + '"') else ""} \
      ~{if defined(s_one) then ("--s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("--s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(unmapped_chrom) then ("--unmapped-chrom " +  '"' + unmapped_chrom + '"') else ""} \
      ~{true="--mark-dups" false="" mark_dups} \
      ~{if defined(extra_col_pair) then ("--extra-col-pair " +  '"' + extra_col_pair + '"') else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    output_file_pairs: "output file for pairs after duplicate removal. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. By default, the output is printed into stdout."
    output_dups: "output file for duplicated pairs.  If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. If the path is the same as in --output or -, output duplicates together  with deduped pairs. By default, duplicates are dropped."
    output_unmapped: "output file for unmapped pairs. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. If the path is the same as in --output or -, output unmapped pairs together with deduped pairs. If the path is the same as --output-dups, output unmapped reads together with dups. By default, unmapped pairs are dropped."
    output_stats: "output file for duplicate statistics.  If file exists, it will be open in the append mode. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed. By default, statistics are not printed."
    max_mismatch: "Pairs with both sides mapped within this distance (bp) from each other are considered duplicates.  [default: 3]"
    method: "[max|sum]              define the mismatch as either the max or the sum of the mismatches ofthe genomic locations of the both sides of the two compared molecules  [default: max]"
    sep: "Separator (\t, \v, etc. characters are supported, pass them in quotes)"
    comment_char: "The first character of comment lines"
    send_header_to: "[dups|dedup|both|none] Which of the outputs should receive header and comment lines"
    cone: "Chrom 1 column; default 1"
    c_two: "Chrom 2 column; default 3"
    p_one: "Position 1 column; default 2"
    p_two: "Position 2 column; default 4"
    s_one: "Strand 1 column; default 5"
    s_two: "Strand 2 column; default 6"
    unmapped_chrom: "Placeholder for a chromosome on an unmapped side; default !"
    mark_dups: "If specified, duplicate pairs are marked as DD in \"pair_type\" and as a duplicate in the sam entries."
    extra_col_pair: "Extra columns that also must match for two pairs to be marked as duplicates. Can be either provided as 0-based column indices or as column names (requires the \"#columns\" header field). The option can be provided multiple times if multiple column pairs must match. Example: --extra-col-pair \"phase1\" \"phase2\""
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
}