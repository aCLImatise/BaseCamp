class: CommandLineTool
id: seqkit_watch.cwl
inputs:
- id: in_bins
  doc: number of histogram bins (default -1)
  type: long?
  inputBinding:
    prefix: --bins
- id: in_delay
  doc: sleep this many seconds after online plotting (default 1)
  type: long?
  inputBinding:
    prefix: --delay
- id: in_dump
  doc: print histogram data to stderr instead of plotting
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_fields
  doc: 'target fields, available values: ReadLen, MeanQual, GC, GCSkew (default "ReadLen")'
  type: string?
  inputBinding:
    prefix: --fields
- id: in_img
  doc: save histogram to this PDF/image file
  type: File?
  inputBinding:
    prefix: --img
- id: in_list_fields
  doc: print out a list of available fields
  type: boolean?
  inputBinding:
    prefix: --list-fields
- id: in_log
  doc: log10(x+1) transform numeric values
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_pass
  doc: pass through mode (write input to stdout)
  type: boolean?
  inputBinding:
    prefix: --pass
- id: in_print_freq
  doc: print/report after this many records (-1 for print after EOF) (default -1)
  type: long?
  inputBinding:
    prefix: --print-freq
- id: in_qual_ascii_base
  doc: ASCII BASE, 33 for Phred+33 (default 33)
  type: long?
  inputBinding:
    prefix: --qual-ascii-base
- id: in_quiet_mode
  doc: supress all plotting to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet-mode
- id: in_reset
  doc: reset histogram after every report
  type: boolean?
  inputBinding:
    prefix: --reset
- id: in_validate_seq
  doc: validate bases according to the alphabet
  type: boolean?
  inputBinding:
    prefix: --validate-seq
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqkit:0.16.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- seqkit
- watch
