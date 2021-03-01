class: CommandLineTool
id: pairtools_dedup.cwl
inputs:
- id: in_output
  doc: "output file for pairs after duplicate\nremoval. If the path ends with .gz\
    \ or .lz4,\nthe output is pbgzip-/lz4c-compressed. By\ndefault, the output is\
    \ printed into stdout."
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_dups
  doc: "output file for duplicated pairs.  If the\npath ends with .gz or .lz4, the\
    \ output is\npbgzip-/lz4c-compressed. If the path is the\nsame as in --output\
    \ or -, output duplicates\ntogether  with deduped pairs. By default,\nduplicates\
    \ are dropped."
  type: File?
  inputBinding:
    prefix: --output-dups
- id: in_output_unmapped
  doc: "output file for unmapped pairs. If the path\nends with .gz or .lz4, the output\
    \ is\npbgzip-/lz4c-compressed. If the path is the\nsame as in --output or -, output\
    \ unmapped\npairs together with deduped pairs. If the\npath is the same as --output-dups,\
    \ output\nunmapped reads together with dups. By\ndefault, unmapped pairs are dropped."
  type: File?
  inputBinding:
    prefix: --output-unmapped
- id: in_output_stats
  doc: "output file for duplicate statistics.  If\nfile exists, it will be open in\
    \ the append\nmode. If the path ends with .gz or .lz4, the\noutput is pbgzip-/lz4c-compressed.\
    \ By\ndefault, statistics are not printed."
  type: File?
  inputBinding:
    prefix: --output-stats
- id: in_max_mismatch
  doc: "Pairs with both sides mapped within this\ndistance (bp) from each other are\
    \ considered\nduplicates.  [default: 3]"
  type: long?
  inputBinding:
    prefix: --max-mismatch
- id: in_method
  doc: "[max|sum]              define the mismatch as either the max or the\nsum of\
    \ the mismatches ofthe genomic\nlocations of the both sides of the two\ncompared\
    \ molecules  [default: max]"
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
  doc: "[dups|dedup|both|none]\nWhich of the outputs should receive header\nand comment\
    \ lines"
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
- id: in_mark_dups
  doc: "If specified, duplicate pairs are marked as\nDD in \"pair_type\" and as a\
    \ duplicate in the\nsam entries."
  type: boolean?
  inputBinding:
    prefix: --mark-dups
- id: in_extra_col_pair
  doc: "Extra columns that also must match for two\npairs to be marked as duplicates.\
    \ Can be\neither provided as 0-based column indices or\nas column names (requires\
    \ the \"#columns\"\nheader field). The option can be provided\nmultiple times\
    \ if multiple column pairs must\nmatch. Example: --extra-col-pair \"phase1\"\n\
    \"phase2\""
  type: long?
  inputBinding:
    prefix: --extra-col-pair
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
- id: in_pairs_path
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file for pairs after duplicate\nremoval. If the path ends with .gz\
    \ or .lz4,\nthe output is pbgzip-/lz4c-compressed. By\ndefault, the output is\
    \ printed into stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_dups
  doc: "output file for duplicated pairs.  If the\npath ends with .gz or .lz4, the\
    \ output is\npbgzip-/lz4c-compressed. If the path is the\nsame as in --output\
    \ or -, output duplicates\ntogether  with deduped pairs. By default,\nduplicates\
    \ are dropped."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dups)
- id: out_output_unmapped
  doc: "output file for unmapped pairs. If the path\nends with .gz or .lz4, the output\
    \ is\npbgzip-/lz4c-compressed. If the path is the\nsame as in --output or -, output\
    \ unmapped\npairs together with deduped pairs. If the\npath is the same as --output-dups,\
    \ output\nunmapped reads together with dups. By\ndefault, unmapped pairs are dropped."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_unmapped)
- id: out_output_stats
  doc: "output file for duplicate statistics.  If\nfile exists, it will be open in\
    \ the append\nmode. If the path ends with .gz or .lz4, the\noutput is pbgzip-/lz4c-compressed.\
    \ By\ndefault, statistics are not printed."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_stats)
hints: []
cwlVersion: v1.1
baseCommand:
- pairtools
- dedup
