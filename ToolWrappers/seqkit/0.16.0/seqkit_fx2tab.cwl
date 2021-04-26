class: CommandLineTool
id: seqkit_fx2tab.cwl
inputs:
- id: in_alphabet
  doc: print alphabet letters
  type: boolean?
  inputBinding:
    prefix: --alphabet
- id: in_avg_qual
  doc: print average quality of a read
  type: boolean?
  inputBinding:
    prefix: --avg-qual
- id: in_base_content
  doc: print base content. (case ignored, multiple values supported) e.g. -B AT -B
    N
  type: string?
  inputBinding:
    prefix: --base-content
- id: in_base_count
  doc: print base count. (case ignored, multiple values supported) e.g. -C AT -C N
  type: string?
  inputBinding:
    prefix: --base-count
- id: in_case_sensitive
  doc: calculate case sensitive base content
  type: boolean?
  inputBinding:
    prefix: --case-sensitive
- id: in_gc
  doc: print GC content
  type: boolean?
  inputBinding:
    prefix: --gc
- id: in_gc_skew
  doc: print GC-Skew
  type: boolean?
  inputBinding:
    prefix: --gc-skew
- id: in_header_line
  doc: print header line
  type: boolean?
  inputBinding:
    prefix: --header-line
- id: in_length
  doc: print sequence length
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_name
  doc: only print names (no sequences and qualities)
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_only_id
  doc: print ID instead of full head
  type: boolean?
  inputBinding:
    prefix: --only-id
- id: in_qual_ascii_base
  doc: ASCII BASE, 33 for Phred+33 (default 33)
  type: long?
  inputBinding:
    prefix: --qual-ascii-base
- id: in_seq_hash
  doc: print hash of sequence (case sensitive)
  type: boolean?
  inputBinding:
    prefix: --seq-hash
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
- fx2tab
