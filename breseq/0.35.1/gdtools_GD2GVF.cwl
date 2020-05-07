class: CommandLineTool
id: gdtools_GD2GVF.cwl
inputs:
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: name of output file (DEFAULT=output.gvf)
  type: string
  inputBinding:
    prefix: --output
- id: snv_only
  doc: only include SNP/SNV entries in output
  type: boolean
  inputBinding:
    prefix: --snv-only
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- GD2GVF
