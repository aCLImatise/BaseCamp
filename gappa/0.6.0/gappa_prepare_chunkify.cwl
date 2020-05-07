class: CommandLineTool
id: gappa_prepare_chunkify.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_path
  doc: :PATH(existing)=[] ... REQUIRED List of fasta files or directories to process.
    For directories, only files with the extension .(fasta|fas|fsa|fna|ffn|faa|frn)
    are processed.
  type: string
  inputBinding:
    prefix: --fasta-path
- id: chunk_size
  doc: =50000     Number of sequences per chunk file.
  type: string
  inputBinding:
    prefix: --chunk-size
- id: min_abundance
  doc: =1      Minimum abundance of a single sequence. Sequences below are filtered
    out.
  type: string
  inputBinding:
    prefix: --min-abundance
- id: hash_function
  doc: :{SHA1,SHA256,MD5}=SHA1 Hash function for re-naming and identifying sequences.
  type: string
  inputBinding:
    prefix: --hash-function
- id: chunks_out_dir
  doc: =.     Directory to write chunks files to
  type: string
  inputBinding:
    prefix: --chunks-out-dir
- id: chunk_file_prefix
  doc: =chunk_ File prefix for chunk files
  type: string
  inputBinding:
    prefix: --chunk-file-prefix
- id: abundances_out_dir
  doc: =. Directory to write abundances files to
  type: string
  inputBinding:
    prefix: --abundances-out-dir
- id: abundance_file_prefix
  doc: =abundances_ File prefix for abundance files
  type: string
  inputBinding:
    prefix: --abundance-file-prefix
- id: allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean
  inputBinding:
    prefix: --allow-file-overwriting
- id: verbose
  doc: Produce more verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: =8            Number of threads to use for calculations.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: string
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- prepare
- chunkify
