class: CommandLineTool
id: pxrlt.cwl
inputs:
- id: in_tree_f
  doc: input tree file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_c_names
  doc: file containing current taxon labels (one per line)
  type: File?
  inputBinding:
    prefix: --cnames
- id: in_n_names
  doc: file containing new taxon labels (one per line)
  type: File?
  inputBinding:
    prefix: --nnames
- id: in_out_f
  doc: output file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_verbose
  doc: make the output more verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
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
  doc: output file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxrlt
