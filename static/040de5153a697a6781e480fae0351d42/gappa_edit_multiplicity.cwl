class: CommandLineTool
id: gappa_edit_multiplicity.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: j_place_path
  doc: :PATH(existing)=[] ... REQUIRED List of jplace files or directories to process.
    For directories, only files with the extension .jplace are processed.
  type: string
  inputBinding:
    prefix: --jplace-path
- id: multiplicity_file
  doc: ':FILE Excludes: --fasta-path --write-multiplicity-file File containing a tab-separated
    list of [sample name,] query name, and multiplicity.'
  type: string
  inputBinding:
    prefix: --multiplicity-file
- id: fast_a_path
  doc: ':PATH(existing)=[] ... Excludes: --multiplicity-file --write-multiplicity-file
    List of fasta files or directories to process. For directories, only files with
    the extension .(fasta|fas|fsa|fna|ffn|faa|frn) are processed.'
  type: string
  inputBinding:
    prefix: --fasta-path
- id: keep_full_label
  doc: ': --fasta-path If fasta files are used, keep their whole label as the name
    for jplace pqueries, instead of removing the abundance annotation.'
  type: string
  inputBinding:
    prefix: --keep-full-label
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: file_prefix
  doc: File prefix for output files
  type: string
  inputBinding:
    prefix: --file-prefix
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
- edit
- multiplicity
