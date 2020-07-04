class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdtools_GD2VCF.cwl
inputs:
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: name of output file (DEFAULT=output.vcf)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- GD2VCF
