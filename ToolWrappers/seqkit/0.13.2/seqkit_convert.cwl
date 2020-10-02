class: CommandLineTool
id: seqkit_convert.cwl
inputs:
- id: in_dry_run
  doc: dry run
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_force
  doc: for Illumina-1.8+ -> Sanger, truncate scores > 40 to 40
  type: boolean
  inputBinding:
    prefix: --force
- id: in_from
  doc: source quality encoding. if not given, we'll guess it
  type: string
  inputBinding:
    prefix: --from
- id: in_n_records
  doc: number of records for guessing quality encoding (default 1000)
  type: long
  inputBinding:
    prefix: --nrecords
- id: in_thresh_b_in_n_most_common
  doc: threshold of 'B' in top N most common quality for guessing Illumina 1.5. (default
    4)
  type: long
  inputBinding:
    prefix: --thresh-B-in-n-most-common
- id: in_thresh_illumina_one_dot_five_frac
  doc: threshold of faction of Illumina 1.5 in the leading N records (default 0.1)
  type: double
  inputBinding:
    prefix: --thresh-illumina1.5-frac
- id: in_to
  doc: target quality encoding (default "Sanger")
  type: string
  inputBinding:
    prefix: --to
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
- convert
