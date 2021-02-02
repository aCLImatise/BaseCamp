class: CommandLineTool
id: tinscan_prep.cwl
inputs:
- id: in_target
  doc: Multifasta containing A genome.
  type: string
  inputBinding:
    prefix: --target
- id: in_query
  doc: Multifasta containing B genome.
  type: string
  inputBinding:
    prefix: --query
- id: in_a_dir
  doc: A genome sub-directory within outdir
  type: Directory
  inputBinding:
    prefix: --adir
- id: in_b_dir
  doc: B genome sub-directory within outdir
  type: Directory
  inputBinding:
    prefix: --bdir
- id: in_outdir
  doc: "Write split directories within this directory.\n(Default: cwd)\n"
  type: Directory
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tinscan-prep
