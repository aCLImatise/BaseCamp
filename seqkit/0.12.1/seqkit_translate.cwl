class: CommandLineTool
id: seqkit_translate.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: allow_unknown_codon
  doc: translate unknown code to 'X'. And you may not use flag --trim which removes
    'X'
  type: boolean
  inputBinding:
    prefix: --allow-unknown-codon
- id: clean
  doc: change all STOP codon positions from the '*' character to 'X' (an unknown residue)
  type: boolean
  inputBinding:
    prefix: --clean
- id: frame
  doc: 'frame(s) to translate, available value: 1, 2, 3, -1, -2, -3, and 6 for all
    six frames (default [1])'
  type: string
  inputBinding:
    prefix: --frame
- id: in_it_codon_as_m
  doc: translate initial codon at beginning to 'M'
  type: boolean
  inputBinding:
    prefix: --init-codon-as-M
- id: list_transl_table
  doc: show details of translate table N, 0 for all (default -1)
  type: long
  inputBinding:
    prefix: --list-transl-table
- id: list_transl_table_with_amb_codons
  doc: show details of translate table N (including ambigugous codons), 0 for all.  (default
    -1)
  type: long
  inputBinding:
    prefix: --list-transl-table-with-amb-codons
- id: transl_table
  doc: translate table/genetic code, type 'seqkit translate --help' for more details
    (default 1)
  type: long
  inputBinding:
    prefix: --transl-table
- id: trim
  doc: remove all 'X' and '*' characters from the right end of the translation
  type: boolean
  inputBinding:
    prefix: --trim
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
- translate
