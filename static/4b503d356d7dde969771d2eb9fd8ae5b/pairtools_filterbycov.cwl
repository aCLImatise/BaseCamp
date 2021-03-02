class: CommandLineTool
id: pairtools_filterbycov.cwl
inputs:
- id: in_output
  doc: "output file for pairs from low coverage\nregions. If the path ends with .gz\
    \ or .lz4,\nthe output is pbgzip-/lz4c-compressed. By\ndefault, the output is\
    \ printed into stdout."
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_high_cov
  doc: "output file for pairs from high coverage\nregions. If the path ends with .gz\
    \ or .lz4,\nthe output is pbgzip-/lz4c-compressed. If\nthe path is the same as\
    \ in --output or -,\noutput duplicates together  with deduped\npairs. By default,\
    \ duplicates are dropped."
  type: File?
  inputBinding:
    prefix: --output-highcov
- id: in_output_unmapped
  doc: "output file for unmapped pairs. If the path\nends with .gz or .lz4, the output\
    \ is\npbgzip-/lz4c-compressed. If the path is the\nsame as in --output or -, output\
    \ unmapped\npairs together with deduped pairs. If the\npath is the same as --output-highcov,\
    \ output\nunmapped reads together. By default,\nunmapped pairs are dropped."
  type: File?
  inputBinding:
    prefix: --output-unmapped
- id: in_output_stats
  doc: output file for statistics of multiple
  type: File?
  inputBinding:
    prefix: --output-stats
- id: in_max_cov
  doc: The maximum allowed coverage per region.
  type: long?
  inputBinding:
    prefix: --max-cov
- id: in_max_dist
  doc: "The resolution for calculating coverage. For\neach pair, the local coverage\
    \ around each\nend is calculated as (1 + the number of\nneighbouring pairs within\
    \ +/- max_dist bp)"
  type: long?
  inputBinding:
    prefix: --max-dist
- id: in_method
  doc: "[max|sum]              calculate the number of neighbouring pairs\nas either\
    \ the sum or the max of the number\nof neighbours on the two sides  [default:\n\
    max]"
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_sep
  doc: "Separator (\\t, \\v, etc. characters are\nsupported, pass them in quotes)"
  type: string?
  inputBinding:
    prefix: --sep
- id: in_comment_char
  doc: The first character of comment lines
  type: string?
  inputBinding:
    prefix: --comment-char
- id: in_send_header_to
  doc: "[lowcov|highcov|both|none]\nWhich of the outputs should receive header\nand\
    \ comment lines"
  type: boolean?
  inputBinding:
    prefix: --send-header-to
- id: in_cone
  doc: Chrom 1 column; default 1
  type: long?
  inputBinding:
    prefix: --c1
- id: in_c_two
  doc: Chrom 2 column; default 3
  type: long?
  inputBinding:
    prefix: --c2
- id: in_p_one
  doc: Position 1 column; default 2
  type: long?
  inputBinding:
    prefix: --p1
- id: in_p_two
  doc: Position 2 column; default 4
  type: long?
  inputBinding:
    prefix: --p2
- id: in_s_one
  doc: Strand 1 column; default 5
  type: long?
  inputBinding:
    prefix: --s1
- id: in_s_two
  doc: Strand 2 column; default 6
  type: long?
  inputBinding:
    prefix: --s2
- id: in_unmapped_chrom
  doc: "Placeholder for a chromosome on an unmapped\nside; default !"
  type: string?
  inputBinding:
    prefix: --unmapped-chrom
- id: in_mark_multi
  doc: "If specified, duplicate pairs are marked as\nFF in \"pair_type\" and as a\
    \ duplicate in the\nsam entries."
  type: boolean?
  inputBinding:
    prefix: --mark-multi
- id: in_nproc_in
  doc: "Number of processes used by the auto-guessed\ninput decompressing command.\
    \  [default: 3]"
  type: long?
  inputBinding:
    prefix: --nproc-in
- id: in_nproc_out
  doc: "Number of processes used by the auto-guessed\noutput compressing command.\
    \  [default: 8]"
  type: long?
  inputBinding:
    prefix: --nproc-out
- id: in_cmd_in
  doc: "A command to decompress the input file. If\nprovided, fully overrides the\
    \ auto-guessed\ncommand. Does not work with stdin. Must read\ninput from stdin\
    \ and print output into\nstdout. EXAMPLE: pbgzip -dc -n 3"
  type: File?
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If\nprovided, fully overrides the auto-guessed\n\
    command. Does not work with stdout. Must\nread input from stdin and print output\
    \ into\nstdout. EXAMPLE: pbgzip -c -n 8"
  type: File?
  inputBinding:
    prefix: --cmd-out
- id: in_number_dot
  doc: 'PAIRS_PATH : input triu-flipped sorted .pairs or .pairsam file.  If the'
  type: long
  inputBinding:
    position: 0
- id: in_interactors_dot
  doc: If file exists, it will be
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file for pairs from low coverage\nregions. If the path ends with .gz\
    \ or .lz4,\nthe output is pbgzip-/lz4c-compressed. By\ndefault, the output is\
    \ printed into stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_high_cov
  doc: "output file for pairs from high coverage\nregions. If the path ends with .gz\
    \ or .lz4,\nthe output is pbgzip-/lz4c-compressed. If\nthe path is the same as\
    \ in --output or -,\noutput duplicates together  with deduped\npairs. By default,\
    \ duplicates are dropped."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_high_cov)
- id: out_output_unmapped
  doc: "output file for unmapped pairs. If the path\nends with .gz or .lz4, the output\
    \ is\npbgzip-/lz4c-compressed. If the path is the\nsame as in --output or -, output\
    \ unmapped\npairs together with deduped pairs. If the\npath is the same as --output-highcov,\
    \ output\nunmapped reads together. By default,\nunmapped pairs are dropped."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_unmapped)
- id: out_output_stats
  doc: output file for statistics of multiple
  type: File?
  outputBinding:
    glob: $(inputs.in_output_stats)
hints: []
cwlVersion: v1.1
baseCommand:
- pairtools
- filterbycov
