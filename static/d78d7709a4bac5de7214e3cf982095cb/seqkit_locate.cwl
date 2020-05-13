class: CommandLineTool
id: seqkit_locate.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: output in BED6 format
  type: boolean
  inputBinding:
    prefix: --bed
- id: degenerate
  doc: pattern/motif contains degenerate base
  type: boolean
  inputBinding:
    prefix: --degenerate
- id: gtf
  doc: output in GTF format
  type: boolean
  inputBinding:
    prefix: --gtf
- id: hide_matched
  doc: do not show matched sequences
  type: boolean
  inputBinding:
    prefix: --hide-matched
- id: ignore_case
  doc: ignore case
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: max_mismatch
  doc: max mismatch when matching by seq. For large genomes like human genome, using
    mapping/alignment tools would be faster
  type: long
  inputBinding:
    prefix: --max-mismatch
- id: non_greedy
  doc: non-greedy mode, faster but may miss motifs overlapping with others
  type: boolean
  inputBinding:
    prefix: --non-greedy
- id: only_positive_strand
  doc: only search on positive strand
  type: boolean
  inputBinding:
    prefix: --only-positive-strand
- id: pattern
  doc: "pattern/motif (multiple values supported. Attention: use double quotation\
    \ marks for patterns containing comma, e.g., -p '\"A{2,}\"')"
  type: string
  inputBinding:
    prefix: --pattern
- id: pattern_file
  doc: pattern/motif file (FASTA format)
  type: string
  inputBinding:
    prefix: --pattern-file
- id: use_fmi
  doc: use FM-index for much faster search of lots of sequence patterns
  type: boolean
  inputBinding:
    prefix: --use-fmi
- id: use_regexp
  doc: patterns/motifs are regular expression
  type: boolean
  inputBinding:
    prefix: --use-regexp
- id: validate_seq_length
  doc: length of sequence to validate (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --validate-seq-length
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
- locate
