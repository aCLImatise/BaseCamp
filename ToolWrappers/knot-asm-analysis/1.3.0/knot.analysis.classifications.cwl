class: CommandLineTool
id: knot.analysis.classifications.cwl
inputs:
- id: in_input
  doc: path to the AAG
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: path where classification report was write
  type: File?
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: "path length threshold\n"
  type: long?
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- knot.analysis.classifications
