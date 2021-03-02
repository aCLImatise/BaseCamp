class: CommandLineTool
id: checkv_end_to_end.cwl
inputs:
- id: in_reference_database_path
  doc: "Reference database path. By default the CHECKVDB environment\nvariable is\
    \ used"
  type: File?
  inputBinding:
    prefix: -d
- id: in_number_threads_use
  doc: Number of threads to use for Prodigal and DIAMOND
  type: long?
  inputBinding:
    prefix: -t
- id: in_restart
  doc: "Overwrite existing intermediate files. By default CheckV\ncontinues where\
    \ program left off"
  type: boolean?
  inputBinding:
    prefix: --restart
- id: in_quiet
  doc: Suppress logging messages
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_input
  doc: Input nucleotide sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checkv
- end_to_end
