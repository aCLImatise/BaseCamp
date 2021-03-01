class: CommandLineTool
id: pmrna.cwl
inputs:
- id: in_introns
  doc: "flag indicating that introns are declared explicitly\nand do not need to be\
    \ inferred from exon features;\ndefault is to infer introns"
  type: boolean?
  inputBinding:
    prefix: --introns
- id: in_locus
  doc: "report a single representative mRNA for each locus\ninstead of each gene"
  type: boolean?
  inputBinding:
    prefix: --locus
- id: in_map
  doc: ': FILE      write each gene/mRNA mapping to the specified file'
  type: boolean?
  inputBinding:
    prefix: --map
- id: in_pseudogenes
  doc: disable pseudogene detection and correction
  type: boolean?
  inputBinding:
    prefix: --pseudogenes
- id: in_an_not_dot_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_new_dot_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aegean:0.16.0--hc2cb157_0
cwlVersion: v1.1
baseCommand:
- pmrna
