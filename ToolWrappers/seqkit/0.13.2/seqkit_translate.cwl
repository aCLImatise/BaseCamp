class: CommandLineTool
id: seqkit_translate.cwl
inputs:
- id: in_allow_unknown_codon
  doc: translate unknown code to 'X'. And you may not use flag --trim which removes
    'X'
  type: boolean
  inputBinding:
    prefix: --allow-unknown-codon
- id: in_clean
  doc: change all STOP codon positions from the '*' character to 'X' (an unknown residue)
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_frame
  doc: 'frame(s) to translate, available value: 1, 2, 3, -1, -2, -3, and 6 for all
    six frames (default [1])'
  type: long
  inputBinding:
    prefix: --frame
- id: in_in_it_codon_as_m
  doc: translate initial codon at beginning to 'M'
  type: boolean
  inputBinding:
    prefix: --init-codon-as-M
- id: in_list_transl_table
  doc: show details of translate table N, 0 for all (default -1)
  type: long
  inputBinding:
    prefix: --list-transl-table
- id: in_list_transl_table_with_amb_codons
  doc: show details of translate table N (including ambigugous codons), 0 for all.  (default
    -1)
  type: long
  inputBinding:
    prefix: --list-transl-table-with-amb-codons
- id: in_transl_table
  doc: translate table/genetic code, type 'seqkit translate --help' for more details
    (default 1)
  type: long
  inputBinding:
    prefix: --transl-table
- id: in_trim
  doc: remove all 'X' and '*' characters from the right end of the translation
  type: boolean
  inputBinding:
    prefix: --trim
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
- translate
