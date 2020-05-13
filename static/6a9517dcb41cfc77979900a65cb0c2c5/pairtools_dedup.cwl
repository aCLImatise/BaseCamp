class: CommandLineTool
id: pairtools_dedup.cwl
inputs:
- id: output
  doc: output file for pairs after duplicate removal. If the path ends with .gz or
    .lz4, the output is pbgzip-/lz4c-compressed. By default, the output is printed
    into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: output_dups
  doc: output file for duplicated pairs.  If the path ends with .gz or .lz4, the output
    is pbgzip-/lz4c-compressed. If the path is the same as in --output or -, output
    duplicates together  with deduped pairs. By default, duplicates are dropped.
  type: string
  inputBinding:
    prefix: --output-dups
- id: output_unmapped
  doc: output file for unmapped pairs. If the path ends with .gz or .lz4, the output
    is pbgzip-/lz4c-compressed. If the path is the same as in --output or -, output
    unmapped pairs together with deduped pairs. If the path is the same as --output-dups,
    output unmapped reads together with dups. By default, unmapped pairs are dropped.
  type: string
  inputBinding:
    prefix: --output-unmapped
- id: output_stats
  doc: output file for duplicate statistics.  If file exists, it will be open in the
    append mode. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed.
    By default, statistics are not printed.
  type: string
  inputBinding:
    prefix: --output-stats
- id: max_mismatch
  doc: 'Pairs with both sides mapped within this distance (bp) from each other are
    considered duplicates.  [default: 3]'
  type: long
  inputBinding:
    prefix: --max-mismatch
- id: method
  doc: '[max|sum]              define the mismatch as either the max or the sum of
    the mismatches ofthe genomic locations of the both sides of the two compared molecules  [default:
    max]'
  type: boolean
  inputBinding:
    prefix: --method
- id: sep
  doc: Separator (\t, \v, etc. characters are supported, pass them in quotes)
  type: string
  inputBinding:
    prefix: --sep
- id: comment_char
  doc: The first character of comment lines
  type: string
  inputBinding:
    prefix: --comment-char
- id: send_header_to
  doc: '[dups|dedup|both|none] Which of the outputs should receive header and comment
    lines'
  type: boolean
  inputBinding:
    prefix: --send-header-to
- id: c1
  doc: Chrom 1 column; default 1
  type: long
  inputBinding:
    prefix: --c1
- id: c2
  doc: Chrom 2 column; default 3
  type: long
  inputBinding:
    prefix: --c2
- id: p1
  doc: Position 1 column; default 2
  type: long
  inputBinding:
    prefix: --p1
- id: p2
  doc: Position 2 column; default 4
  type: long
  inputBinding:
    prefix: --p2
- id: s1
  doc: Strand 1 column; default 5
  type: long
  inputBinding:
    prefix: --s1
- id: s2
  doc: Strand 2 column; default 6
  type: long
  inputBinding:
    prefix: --s2
- id: unmapped_chrom
  doc: Placeholder for a chromosome on an unmapped side; default !
  type: string
  inputBinding:
    prefix: --unmapped-chrom
- id: mark_dups
  doc: If specified, duplicate pairs are marked as DD in "pair_type" and as a duplicate
    in the sam entries.
  type: boolean
  inputBinding:
    prefix: --mark-dups
- id: extra_col_pair
  doc: 'Extra columns that also must match for two pairs to be marked as duplicates.
    Can be either provided as 0-based column indices or as column names (requires
    the "#columns" header field). The option can be provided multiple times if multiple
    column pairs must match. Example: --extra-col-pair "phase1" "phase2"'
  type: string
  inputBinding:
    prefix: --extra-col-pair
- id: nproc_in
  doc: 'Number of processes used by the auto-guessed input decompressing command.  [default:
    3]'
  type: long
  inputBinding:
    prefix: --nproc-in
- id: nproc_out
  doc: 'Number of processes used by the auto-guessed output compressing command.  [default:
    8]'
  type: long
  inputBinding:
    prefix: --nproc-out
- id: cmd_in
  doc: 'A command to decompress the input file. If provided, fully overrides the auto-guessed
    command. Does not work with stdin. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -dc -n 3'
  type: string
  inputBinding:
    prefix: --cmd-in
- id: cmd_out
  doc: 'A command to compress the output file. If provided, fully overrides the auto-guessed
    command. Does not work with stdout. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -c -n 8'
  type: string
  inputBinding:
    prefix: --cmd-out
outputs: []
cwlVersion: v1.1
baseCommand:
- pairtools
- dedup
