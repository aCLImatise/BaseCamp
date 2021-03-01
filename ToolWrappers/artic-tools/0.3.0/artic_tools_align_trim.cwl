class: CommandLineTool
id: artic_tools_align_trim.cwl
inputs:
- id: in_input_file
  doc: The input BAM file (will try STDIN if not provided)
  type: File?
  inputBinding:
    prefix: --inputFile
- id: in_min_mapq
  doc: A minimum MAPQ threshold for processing alignments (default = 15)
  type: long?
  inputBinding:
    prefix: --minMAPQ
- id: in_normalise
  doc: Subsample to N coverage per strand (default = 100, deactivate with 0)
  type: long?
  inputBinding:
    prefix: --normalise
- id: in_report
  doc: Output an align_trim report to file
  type: File?
  inputBinding:
    prefix: --report
- id: in_start
  doc: Trim to start of primers instead of ends
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_remove_incorrect_pairs
  doc: Remove amplicons with incorrect primer pairs
  type: boolean?
  inputBinding:
    prefix: --remove-incorrect-pairs
- id: in_no_read_groups
  doc: Do not divide reads into groups in SAM output
  type: boolean?
  inputBinding:
    prefix: --no-read-groups
- id: in_verbose
  doc: Output debugging information to STDERR
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_scheme
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_report
  doc: Output an align_trim report to file
  type: File?
  outputBinding:
    glob: $(inputs.in_report)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0
cwlVersion: v1.1
baseCommand:
- artic-tools
- align_trim
