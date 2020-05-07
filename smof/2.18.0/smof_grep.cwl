class: CommandLineTool
id: smof_grep.cwl
inputs:
- id: pattern
  doc: pattern to match
  type: string
  inputBinding:
    position: 0
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 1
- id: match_sequence
  doc: match sequence rather than header
  type: boolean
  inputBinding:
    prefix: --match-sequence
- id: file
  doc: obtain patterns from FILE, one per line
  type: File
  inputBinding:
    prefix: --file
- id: files_without_match
  doc: print names files with no matches
  type: boolean
  inputBinding:
    prefix: --files-without-match
- id: files_with_matches
  doc: print names input files with matches
  type: boolean
  inputBinding:
    prefix: --files-with-matches
- id: wrap
  doc: a regular expression to capture patterns
  type: string
  inputBinding:
    prefix: --wrap
- id: perl_regexp
  doc: treat patterns as perl regular expressions
  type: boolean
  inputBinding:
    prefix: --perl-regexp
- id: ambiguous_nucl
  doc: parse extended nucleotide alphabet
  type: boolean
  inputBinding:
    prefix: --ambiguous-nucl
- id: case_sensitive
  doc: DO NOT ignore case distinctions (ignore by default)
  type: boolean
  inputBinding:
    prefix: --case-sensitive
- id: invert_match
  doc: print non-matching entries
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: only_matching
  doc: show only the part that matches
  type: boolean
  inputBinding:
    prefix: --only-matching
- id: before_context
  doc: Include N characters before match
  type: string
  inputBinding:
    prefix: --before-context
- id: after_context
  doc: Include N characters after match
  type: string
  inputBinding:
    prefix: --after-context
- id: context
  doc: Include N characters before and after match
  type: string
  inputBinding:
    prefix: --context
- id: count
  doc: print number of entries with matches
  type: boolean
  inputBinding:
    prefix: --count
- id: count_matches
  doc: print number of non-overlapping matches
  type: boolean
  inputBinding:
    prefix: --count-matches
- id: line_regexp
  doc: force PATTERN to match the whole text (regex allowed)
  type: boolean
  inputBinding:
    prefix: --line-regexp
- id: exact
  doc: force PATTERN to literally equal the text (fast)
  type: boolean
  inputBinding:
    prefix: --exact
- id: gapped
  doc: match across gaps when searching aligned sequences
  type: boolean
  inputBinding:
    prefix: --gapped
- id: both_strands
  doc: search both strands
  type: boolean
  inputBinding:
    prefix: --both-strands
- id: reverse_only
  doc: only search the reverse strand
  type: boolean
  inputBinding:
    prefix: --reverse-only
- id: no_color
  doc: do not print in color
  type: boolean
  inputBinding:
    prefix: --no-color
- id: force_color
  doc: print in color even to non-tty (DANGEROUS)
  type: boolean
  inputBinding:
    prefix: --force-color
- id: preserve_color
  doc: Preserve incoming color
  type: boolean
  inputBinding:
    prefix: --preserve-color
- id: color
  doc: Choose a highlight color
  type: string
  inputBinding:
    prefix: --color
- id: gff
  doc: output matches in gff format
  type: boolean
  inputBinding:
    prefix: --gff
- id: gff_type
  doc: name of searched feature
  type: string
  inputBinding:
    prefix: --gff-type
- id: fasta_in
  doc: Search for exact sequence matches against FASTA
  type: string
  inputBinding:
    prefix: --fastain
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- grep
