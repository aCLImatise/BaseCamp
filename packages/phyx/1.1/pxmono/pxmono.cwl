class: CommandLineTool
id: pxmono.cwl
inputs:
- id: in_tree_f
  doc: input tree file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_names
  doc: names separated by commas (NO SPACES!)
  type: string?
  inputBinding:
    prefix: --names
- id: in_names_f
  doc: names in a file (each on a line)
  type: File?
  inputBinding:
    prefix: --namesf
- id: in_comp
  doc: take the complement (i.e. check monophyly of taxa not in list)
  type: boolean?
  inputBinding:
    prefix: --comp
- id: in_out_f
  doc: output tree file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_ignore
  doc: 'ignore missing (default: exit if names are not in the tree)'
  type: boolean?
  inputBinding:
    prefix: --ignore
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
  doc: output tree file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxmono
