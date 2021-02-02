class: CommandLineTool
id: seqkit_seq.cwl
inputs:
- id: in_color
  doc: colorize sequences - to be piped into "less -R"
  type: boolean
  inputBinding:
    prefix: --color
- id: in_complement
  doc: complement sequence, flag '-v' is recommended to switch on
  type: boolean
  inputBinding:
    prefix: --complement
- id: in_dna_two_rna
  doc: DNA to RNA
  type: boolean
  inputBinding:
    prefix: --dna2rna
- id: in_gap_letters
  doc: gap letters (default "- \t.")
  type: string
  inputBinding:
    prefix: --gap-letters
- id: in_lower_case
  doc: print sequences in lower case
  type: boolean
  inputBinding:
    prefix: --lower-case
- id: in_max_len
  doc: only print sequences shorter than the maximum length (-1 for no limit) (default
    -1)
  type: long
  inputBinding:
    prefix: --max-len
- id: in_max_qual
  doc: only print sequences with average quality less than this limit (-1 for no limit)
    (default -1)
  type: double
  inputBinding:
    prefix: --max-qual
- id: in_min_len
  doc: only print sequences longer than the minimum length (-1 for no limit) (default
    -1)
  type: long
  inputBinding:
    prefix: --min-len
- id: in_min_qual
  doc: only print sequences with average quality qreater or equal than this limit
    (-1 for no limit) (default -1)
  type: double
  inputBinding:
    prefix: --min-qual
- id: in_name
  doc: only print names
  type: boolean
  inputBinding:
    prefix: --name
- id: in_only_id
  doc: print ID instead of full head
  type: boolean
  inputBinding:
    prefix: --only-id
- id: in_qual
  doc: only print qualities
  type: boolean
  inputBinding:
    prefix: --qual
- id: in_qual_ascii_base
  doc: ASCII BASE, 33 for Phred+33 (default 33)
  type: long
  inputBinding:
    prefix: --qual-ascii-base
- id: in_remove_gaps
  doc: remove gaps
  type: boolean
  inputBinding:
    prefix: --remove-gaps
- id: in_reverse
  doc: reverse sequence
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_rna_two_dna
  doc: RNA to DNA
  type: boolean
  inputBinding:
    prefix: --rna2dna
- id: in_seq
  doc: only print sequences
  type: boolean
  inputBinding:
    prefix: --seq
- id: in_upper_case
  doc: print sequences in upper case
  type: boolean
  inputBinding:
    prefix: --upper-case
- id: in_validate_seq
  doc: validate bases according to the alphabet
  type: boolean
  inputBinding:
    prefix: --validate-seq
- id: in_validate_seq_length
  doc: length of sequence to validate (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --validate-seq-length
- id: in_alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: in_id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean
  inputBinding:
    prefix: --id-ncbi
- id: in_id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string
  inputBinding:
    prefix: --id-regexp
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File
  inputBinding:
    prefix: --infile-list
- id: in_line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long
  inputBinding:
    prefix: --line-width
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  inputBinding:
    prefix: --out-file
- id: in_quiet
  doc: be quiet and do not show extra information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string
  inputBinding:
    prefix: --seq-type
- id: in_threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also
    set with environment variable SEQKIT_THREADS) (default 2)'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- seqkit
- seq
