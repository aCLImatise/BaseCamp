class: CommandLineTool
id: hicup_deduplicator.cwl
inputs:
- id: in_config
  doc: Specify the configuration file
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_outdir
  doc: Directory to write output files
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress progress reports (except warnings)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: "Number of threads to use, allowing simultaneous processing  of\ndifferent\
    \ files"
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_zip
  doc: Compress output
  type: boolean?
  inputBinding:
    prefix: --zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory to write output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- hicup_deduplicator
