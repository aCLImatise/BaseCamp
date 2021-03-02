class: CommandLineTool
id: add_name_to_gff3.pl.cwl
inputs:
- id: in_out
  doc: gff3 output file
  type: File?
  inputBinding:
    prefix: --out
- id: in_filter
  doc: print only the features gene, mRNA, CDS and exon
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_evidence_modeler
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: gff3 output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- add_name_to_gff3.pl
