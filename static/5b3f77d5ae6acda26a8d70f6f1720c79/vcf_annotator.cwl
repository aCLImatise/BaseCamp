class: CommandLineTool
id: ../../../vcf_annotator.cwl
inputs:
- id: output
  doc: File to write VCF output to (Default STDOUT).
  type: string
  inputBinding:
    prefix: --output
- id: vcf_file
  doc: VCF file of variants
  type: string
  inputBinding:
    position: 0
- id: genbank_file
  doc: GenBank file of the reference genome.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-annotator
