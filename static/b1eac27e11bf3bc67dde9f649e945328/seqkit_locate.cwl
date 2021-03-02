class: CommandLineTool
id: seqkit_locate.cwl
inputs:
- id: in_bed
  doc: output in BED6 format
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_degenerate
  doc: pattern/motif contains degenerate base
  type: boolean?
  inputBinding:
    prefix: --degenerate
- id: in_gtf
  doc: output in GTF format
  type: boolean?
  inputBinding:
    prefix: --gtf
- id: in_hide_matched
  doc: do not show matched sequences
  type: boolean?
  inputBinding:
    prefix: --hide-matched
- id: in_ignore_case
  doc: ignore case
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_max_mismatch
  doc: max mismatch when matching by seq. For large genomes like human genome, using
    mapping/alignment tools would be faster
  type: long?
  inputBinding:
    prefix: --max-mismatch
- id: in_non_greedy
  doc: non-greedy mode, faster but may miss motifs overlapping with others
  type: boolean?
  inputBinding:
    prefix: --non-greedy
- id: in_only_positive_strand
  doc: only search on positive strand
  type: boolean?
  inputBinding:
    prefix: --only-positive-strand
- id: in_pattern
  doc: "pattern/motif (multiple values supported. Attention: use double quotation\
    \ marks for patterns containing comma, e.g., -p '\"A{2,}\"')"
  type: long?
  inputBinding:
    prefix: --pattern
- id: in_pattern_file
  doc: pattern/motif file (FASTA format)
  type: File?
  inputBinding:
    prefix: --pattern-file
- id: in_use_fmi
  doc: use FM-index for much faster search of lots of sequence patterns
  type: boolean?
  inputBinding:
    prefix: --use-fmi
- id: in_use_regexp
  doc: patterns/motifs are regular expression
  type: boolean?
  inputBinding:
    prefix: --use-regexp
- id: in_validate_seq_length
  doc: length of sequence to validate (0 for whole seq) (default 10000)
  type: long?
  inputBinding:
    prefix: --validate-seq-length
- id: in_alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long?
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: in_id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean?
  inputBinding:
    prefix: --id-ncbi
- id: in_id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string?
  inputBinding:
    prefix: --id-regexp
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File?
  inputBinding:
    prefix: --infile-list
- id: in_line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long?
  inputBinding:
    prefix: --line-width
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_quiet
  doc: be quiet and do not show extra information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string?
  inputBinding:
    prefix: --seq-type
- id: in_threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also
    set with environment variable SEQKIT_THREADS) (default 2)'
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seqkit
- locate
