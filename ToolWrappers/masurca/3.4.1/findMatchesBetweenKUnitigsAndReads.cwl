class: CommandLineTool
id: findMatchesBetweenKUnitigsAndReads.cwl
inputs:
- id: in_long
  doc: Long output format (false)
  type: boolean?
  inputBinding:
    prefix: --long
- id: in_output
  doc: Output file (kunitigs_reads_matches)
  type: File?
  inputBinding:
    prefix: --output
- id: in_mer
  doc: '*Length of mer'
  type: long?
  inputBinding:
    prefix: --mer
- id: in_gzip
  doc: Gzip output (false)
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_threads
  doc: Number of threads (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Be verbose (false)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_kuni_tig_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (kunitigs_reads_matches)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- findMatchesBetweenKUnitigsAndReads
