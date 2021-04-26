class: CommandLineTool
id: seqkit_scat.cwl
inputs:
- id: in_allow_gaps
  doc: allow gap character (-) in sequences
  type: boolean?
  inputBinding:
    prefix: --allow-gaps
- id: in_delta
  doc: minimum size increase in kilobytes to trigger parsing (default 5)
  type: long?
  inputBinding:
    prefix: --delta
- id: in_drop_time
  doc: Notification drop interval (default "500ms")
  type: long?
  inputBinding:
    prefix: --drop-time
- id: in_find_only
  doc: concatenate exisiting files and quit
  type: boolean?
  inputBinding:
    prefix: --find-only
- id: in_format
  doc: 'input and output format: fastq or fasta (fastq) (default "fastq")'
  type: string?
  inputBinding:
    prefix: --format
- id: in_gz_only
  doc: only look for gzipped files (.gz suffix)
  type: boolean?
  inputBinding:
    prefix: --gz-only
- id: in_in_format
  doc: 'input format: fastq or fasta (fastq)'
  type: string?
  inputBinding:
    prefix: --in-format
- id: in_out_format
  doc: 'output format: fastq or fasta'
  type: string?
  inputBinding:
    prefix: --out-format
- id: in_qual_ascii_base
  doc: ASCII BASE, 33 for Phred+33 (default 33)
  type: long?
  inputBinding:
    prefix: --qual-ascii-base
- id: in_regexp
  doc: regexp for watched files, by default guessed from the input format
  type: string?
  inputBinding:
    prefix: --regexp
- id: in_time_limit
  doc: quit after inactive for this time period
  type: string?
  inputBinding:
    prefix: --time-limit
- id: in_wait_pid
  doc: after process with this PID exited (default -1)
  type: long?
  inputBinding:
    prefix: --wait-pid
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqkit:0.16.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- seqkit
- scat
