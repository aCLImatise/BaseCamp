class: CommandLineTool
id: seqkit_rename.cwl
inputs:
- id: in_by_name
  doc: check duplication by full name instead of just id
  type: boolean?
  inputBinding:
    prefix: --by-name
- id: in_force
  doc: overwrite output directory
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_multiple_out_files
  doc: write results into separated files for multiple input files
  type: boolean?
  inputBinding:
    prefix: --multiple-outfiles
- id: in_out_dir
  doc: output directory (default "renamed")
  type: Directory?
  inputBinding:
    prefix: --out-dir
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
- id: out_force
  doc: overwrite output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_out_dir
  doc: output directory (default "renamed")
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqkit:0.15.0--0
cwlVersion: v1.1
baseCommand:
- seqkit
- rename
