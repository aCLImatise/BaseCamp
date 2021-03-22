class: CommandLineTool
id: funannotate_fix.cwl
inputs:
- id: in_input
  doc: Annotated genome in GenBank format.
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_tbl
  doc: NCBI tbl annotation file.
  type: boolean?
  inputBinding:
    prefix: --tbl
- id: in_drop
  doc: Gene models to remove/drop from annotation. File with locus_tag 1 per line.
  type: boolean?
  inputBinding:
    prefix: --drop
- id: in_out
  doc: Output folder
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_tbl_two_asn
  doc: 'Parameters for tbl2asn. Default: "-l paired-ends"'
  type: boolean?
  inputBinding:
    prefix: --tbl2asn
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- funannotate
- fix
