class: CommandLineTool
id: seqkit_amplicon.cwl
inputs:
- id: in_y_invalid
  doc: :y (invalid)
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_xy_xyf_r
  doc: "x/y\n1 3 5    x/y\nF             R"
  type: boolean?
  inputBinding:
    prefix: -3-1
- id: in_bed
  doc: output in BED6+1 format with amplicon as 7th columns
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_flanking_region
  doc: region is flanking region
  type: boolean?
  inputBinding:
    prefix: --flanking-region
- id: in_forward
  doc: forward primer (5'-primer-3'), degenerate bases allowed
  type: long?
  inputBinding:
    prefix: --forward
- id: in_max_mismatch
  doc: max mismatch when matching primers
  type: long?
  inputBinding:
    prefix: --max-mismatch
- id: in_only_positive_strand
  doc: only search on positive strand
  type: boolean?
  inputBinding:
    prefix: --only-positive-strand
- id: in_primer_file
  doc: 3- or 2-column tabular primer file, with first column as primer name
  type: File?
  inputBinding:
    prefix: --primer-file
- id: in_region
  doc: specify region to return. type "seqkit amplicon -h" for detail
  type: string?
  inputBinding:
    prefix: --region
- id: in_reverse
  doc: reverse primer (5'-primer-3'), degenerate bases allowed
  type: long?
  inputBinding:
    prefix: --reverse
- id: in_strict_mode
  doc: strict mode, i.e., discarding seqs not fully matching (shorter) given region
    range
  type: boolean?
  inputBinding:
    prefix: --strict-mode
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
- amplicon
