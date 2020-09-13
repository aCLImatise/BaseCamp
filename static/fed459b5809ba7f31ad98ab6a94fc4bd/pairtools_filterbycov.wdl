version 1.0

task PairtoolsFilterbycov {
  input {
    File? output_file_pairs_low
    File? output_high_cov
    File? output_unmapped
    File? output_stats
    Int? max_cov
    Int? max_dist
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
    Boolean? mark_multi
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    Int number_dot
    String interactors_dot
  }
  command <<<
    pairtools filterbycov \
      ~{number_dot} \
      ~{interactors_dot} \
      ~{if defined(output_file_pairs_low) then ("--output " +  '"' + output_file_pairs_low + '"') else ""} \
      ~{if defined(output_high_cov) then ("--output-highcov " +  '"' + output_high_cov + '"') else ""} \
      ~{if defined(output_unmapped) then ("--output-unmapped " +  '"' + output_unmapped + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
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
      ~{if (mark_multi) then "--mark-multi" else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    output_file_pairs_low: "output file for pairs from low coverage\\nregions. If the path ends with .gz or .lz4,\\nthe output is pbgzip-/lz4c-compressed. By\\ndefault, the output is printed into stdout."
    output_high_cov: "output file for pairs from high coverage\\nregions. If the path ends with .gz or .lz4,\\nthe output is pbgzip-/lz4c-compressed. If\\nthe path is the same as in --output or -,\\noutput duplicates together  with deduped\\npairs. By default, duplicates are dropped."
    output_unmapped: "output file for unmapped pairs. If the path\\nends with .gz or .lz4, the output is\\npbgzip-/lz4c-compressed. If the path is the\\nsame as in --output or -, output unmapped\\npairs together with deduped pairs. If the\\npath is the same as --output-highcov, output\\nunmapped reads together. By default,\\nunmapped pairs are dropped."
    output_stats: "output file for statistics of multiple"
    max_cov: "The maximum allowed coverage per region."
    max_dist: "The resolution for calculating coverage. For\\neach pair, the local coverage around each\\nend is calculated as (1 + the number of\\nneighbouring pairs within +/- max_dist bp)"
    method: "[max|sum]              calculate the number of neighbouring pairs\\nas either the sum or the max of the number\\nof neighbours on the two sides  [default:\\nmax]"
    sep: "Separator (\\t, \\v, etc. characters are\\nsupported, pass them in quotes)"
    comment_char: "The first character of comment lines"
    send_header_to: "[lowcov|highcov|both|none]\\nWhich of the outputs should receive header\\nand comment lines"
    cone: "Chrom 1 column; default 1"
    c_two: "Chrom 2 column; default 3"
    p_one: "Position 1 column; default 2"
    p_two: "Position 2 column; default 4"
    s_one: "Strand 1 column; default 5"
    s_two: "Strand 2 column; default 6"
    unmapped_chrom: "Placeholder for a chromosome on an unmapped\\nside; default !"
    mark_multi: "If specified, duplicate pairs are marked as\\nFF in \\\"pair_type\\\" and as a duplicate in the\\nsam entries."
    nproc_in: "Number of processes used by the auto-guessed\\ninput decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed\\noutput compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdin. Must read\\ninput from stdin and print output into\\nstdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdout. Must\\nread input from stdin and print output into\\nstdout. EXAMPLE: pbgzip -c -n 8"
    number_dot: "PAIRS_PATH : input triu-flipped sorted .pairs or .pairsam file.  If the"
    interactors_dot: "If file exists, it will be"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_pairs_low = "${in_output_file_pairs_low}"
    File out_output_high_cov = "${in_output_high_cov}"
    File out_output_unmapped = "${in_output_unmapped}"
    File out_output_stats = "${in_output_stats}"
  }
}