class: CommandLineTool
id: shuffle_predictions.py.cwl
inputs:
- id: in_input
  doc: Path to input directory.
  type: File?
  inputBinding:
    prefix: --input
- id: in_outdir
  doc: Path to output directory.
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_rep
  doc: 'Number of shuffled replicates to create (default: 1).'
  type: long?
  inputBinding:
    prefix: --rep
- id: in_seed
  doc: "Random seed: set this if you want reproducible\nshufflings (default: None)."
  type: long?
  inputBinding:
    prefix: --seed
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Path to output directory.
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/picrust2:2.4.1--py_0
cwlVersion: v1.1
baseCommand:
- shuffle_predictions.py
