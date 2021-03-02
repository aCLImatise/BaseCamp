class: CommandLineTool
id: pxtgen.cwl
inputs:
- id: in_n_tax
  doc: number of taxa
  type: long?
  inputBinding:
    prefix: --ntax
- id: in_rooted
  doc: 'whether generated trees are rooted (default: false)'
  type: boolean?
  inputBinding:
    prefix: --rooted
- id: in_count
  doc: give the number of possible trees for n taxa and exit
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_label
  doc: "prefix label for taxon names (default: 't')"
  type: string?
  inputBinding:
    prefix: --label
- id: in_out_f
  doc: output file, STOUT otherwise
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
  doc: output file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxtgen
