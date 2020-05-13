class: CommandLineTool
id: secapr_locus_selection.cwl
inputs:
- id: input
  doc: The folder with the results of the reference based assembly.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory where results will be safed.
  type: string
  inputBinding:
    prefix: --output
- id: n
  doc: The n loci that are best represented accross all samples will be extracted.
  type: string
  inputBinding:
    prefix: --n
- id: read_cov
  doc: The threshold for what average read coverage the selected target loci should
    at least have.
  type: string
  inputBinding:
    prefix: --read_cov
- id: reference
  doc: Path to reference library fasta file (secapr will find it by itself if the
    reference assembly was executed with secapr).
  type: string
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- secapr
- locus_selection
