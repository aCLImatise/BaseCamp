class: CommandLineTool
id: pxcontrates.cwl
inputs:
- id: in_char_f
  doc: input character file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --charf
- id: in_tree_f
  doc: input tree file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_analysis
  doc: analysis type (0=anc[DEFAULT], 1=ratetest)
  type: long?
  inputBinding:
    prefix: --analysis
- id: in_out_f
  doc: output sequence file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output sequence file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxcontrates
