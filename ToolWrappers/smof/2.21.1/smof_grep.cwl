class: CommandLineTool
id: smof_grep.cwl
inputs:
- id: in_match_sequence
  doc: match sequence rather than header
  type: boolean?
  inputBinding:
    prefix: --match-sequence
- id: in_file
  doc: obtain patterns from FILE, one per line
  type: File?
  inputBinding:
    prefix: --file
- id: in_files_without_match
  doc: print names files with no matches
  type: boolean?
  inputBinding:
    prefix: --files-without-match
- id: in_files_with_matches
  doc: print names input files with matches
  type: boolean?
  inputBinding:
    prefix: --files-with-matches
- id: in_wrap
  doc: a regular expression to capture patterns
  type: string?
  inputBinding:
    prefix: --wrap
- id: in_perl_regexp
  doc: treat patterns as perl regular expressions
  type: boolean?
  inputBinding:
    prefix: --perl-regexp
- id: in_ambiguous_nucl
  doc: parse extended nucleotide alphabet
  type: boolean?
  inputBinding:
    prefix: --ambiguous-nucl
- id: in_case_sensitive
  doc: DO NOT ignore case distinctions (ignore by default)
  type: boolean?
  inputBinding:
    prefix: --case-sensitive
- id: in_invert_match
  doc: print non-matching entries
  type: boolean?
  inputBinding:
    prefix: --invert-match
- id: in_only_matching
  doc: show only the part that matches
  type: boolean?
  inputBinding:
    prefix: --only-matching
- id: in_before_context
  doc: Include N characters before match
  type: string?
  inputBinding:
    prefix: --before-context
- id: in_after_context
  doc: Include N characters after match
  type: string?
  inputBinding:
    prefix: --after-context
- id: in_context
  doc: Include N characters before and after match
  type: string?
  inputBinding:
    prefix: --context
- id: in_count
  doc: print number of entries with matches
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_count_matches
  doc: print number of non-overlapping matches
  type: boolean?
  inputBinding:
    prefix: --count-matches
- id: in_line_regexp
  doc: force PATTERN to match the whole text (regex allowed)
  type: boolean?
  inputBinding:
    prefix: --line-regexp
- id: in_exact
  doc: force PATTERN to literally equal the text (fast)
  type: boolean?
  inputBinding:
    prefix: --exact
- id: in_gapped
  doc: match across gaps when searching aligned sequences
  type: boolean?
  inputBinding:
    prefix: --gapped
- id: in_both_strands
  doc: search both strands
  type: boolean?
  inputBinding:
    prefix: --both-strands
- id: in_reverse_only
  doc: only search the reverse strand
  type: boolean?
  inputBinding:
    prefix: --reverse-only
- id: in_no_color
  doc: do not print in color
  type: boolean?
  inputBinding:
    prefix: --no-color
- id: in_force_color
  doc: print in color even to non-tty (DANGEROUS)
  type: boolean?
  inputBinding:
    prefix: --force-color
- id: in_preserve_color
  doc: Preserve incoming color
  type: boolean?
  inputBinding:
    prefix: --preserve-color
- id: in_color
  doc: Choose a highlight color
  type: string?
  inputBinding:
    prefix: --color
- id: in_gff
  doc: output matches in gff format
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_gff_type
  doc: name of searched feature
  type: string?
  inputBinding:
    prefix: --gff-type
- id: in_fasta_in
  doc: Search for exact sequence matches against FASTA
  type: string?
  inputBinding:
    prefix: --fastain
- id: in_pattern
  doc: pattern to match
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smof:2.21.1--py_0
cwlVersion: v1.1
baseCommand:
- smof
- grep
