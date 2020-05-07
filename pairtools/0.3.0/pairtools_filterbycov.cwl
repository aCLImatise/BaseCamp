class: CommandLineTool
id: pairtools_filterbycov.cwl
inputs:
- id: output
  doc: output file for pairs from low coverage regions. If the path ends with .gz
    or .lz4, the output is pbgzip-/lz4c-compressed. By default, the output is printed
    into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: output_high_cov
  doc: output file for pairs from high coverage regions. If the path ends with .gz
    or .lz4, the output is pbgzip-/lz4c-compressed. If the path is the same as in
    --output or -, output duplicates together  with deduped pairs. By default, duplicates
    are dropped.
  type: string
  inputBinding:
    prefix: --output-highcov
- id: output_unmapped
  doc: output file for unmapped pairs. If the path ends with .gz or .lz4, the output
    is pbgzip-/lz4c-compressed. If the path is the same as in --output or -, output
    unmapped pairs together with deduped pairs. If the path is the same as --output-highcov,
    output unmapped reads together. By default, unmapped pairs are dropped.
  type: string
  inputBinding:
    prefix: --output-unmapped
- id: output_stats
  doc: output file for statistics of multiple interactors.  If file exists, it will
    be open in the append mode. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed.
    By default, statistics are not printed.
  type: string
  inputBinding:
    prefix: --output-stats
- id: max_cov
  doc: The maximum allowed coverage per region.
  type: long
  inputBinding:
    prefix: --max-cov
- id: max_dist
  doc: The resolution for calculating coverage. For each pair, the local coverage
    around each end is calculated as (1 + the number of neighbouring pairs within
    +/- max_dist bp)
  type: long
  inputBinding:
    prefix: --max-dist
- id: method
  doc: '[max|sum]              calculate the number of neighbouring pairs as either
    the sum or the max of the number of neighbours on the two sides  [default: max]'
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
  doc: '[lowcov|highcov|both|none] Which of the outputs should receive header and
    comment lines'
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
- id: mark_multi
  doc: If specified, duplicate pairs are marked as FF in "pair_type" and as a duplicate
    in the sam entries.
  type: boolean
  inputBinding:
    prefix: --mark-multi
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
- filterbycov
