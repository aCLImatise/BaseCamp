class: CommandLineTool
id: convertToPBCNS.cwl
inputs:
- id: in_coverage
  doc: Minimum coverage in a consensus region to keep, default 0.
  type: boolean?
  inputBinding:
    prefix: -coverage
- id: in_threads
  doc: Number of threads to use for generating consensus, default 1.
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_path
  doc: Path to smrtportal installation. Required if smrtportal is not in path.
  type: boolean?
  inputBinding:
    prefix: -path
- id: in_prefix
  doc: Prefix for temporary files created by this job
  type: boolean?
  inputBinding:
    prefix: -prefix
- id: in_length
  doc: Minimum sequence length to keep
  type: boolean?
  inputBinding:
    prefix: -length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertToPBCNS
