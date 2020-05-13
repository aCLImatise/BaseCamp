class: CommandLineTool
id: seqkit_grep.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: by_name
  doc: match by full name instead of just id
  type: boolean
  inputBinding:
    prefix: --by-name
- id: by_seq
  doc: search subseq on seq, only positive strand is searched, and mismatch allowed
    using flag -m/--max-mismatch
  type: boolean
  inputBinding:
    prefix: --by-seq
- id: degenerate
  doc: pattern/motif contains degenerate base
  type: boolean
  inputBinding:
    prefix: --degenerate
- id: delete_matched
  doc: delete a pattern right after being matched, this keeps the firstly matched
    data and speedups when using regular expressions
  type: boolean
  inputBinding:
    prefix: --delete-matched
- id: ignore_case
  doc: ignore case
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: invert_match
  doc: invert the sense of matching, to select non-matching records
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: max_mismatch
  doc: max mismatch when matching by seq. For large genomes like human genome, using
    mapping/alignment tools would be faster
  type: long
  inputBinding:
    prefix: --max-mismatch
- id: pattern
  doc: "search pattern (multiple values supported. Attention: use double quotation\
    \ marks for patterns containing comma, e.g., -p '\"A{2,}\"'))"
  type: string
  inputBinding:
    prefix: --pattern
- id: pattern_file
  doc: pattern file (one record per line)
  type: string
  inputBinding:
    prefix: --pattern-file
- id: region
  doc: specify sequence region for searching. e.g 1:12 for first 12 bases, -12:-1
    for last 12 bases
  type: string
  inputBinding:
    prefix: --region
- id: use_regexp
  doc: patterns are regular expression
  type: boolean
  inputBinding:
    prefix: --use-regexp
- id: alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean
  inputBinding:
    prefix: --id-ncbi
- id: id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string
  inputBinding:
    prefix: --id-regexp
- id: in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: string
  inputBinding:
    prefix: --infile-list
- id: line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long
  inputBinding:
    prefix: --line-width
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: quiet
  doc: be quiet and do not show extra information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string
  inputBinding:
    prefix: --seq-type
- id: threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others) (default
    2)'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- seqkit
- grep
