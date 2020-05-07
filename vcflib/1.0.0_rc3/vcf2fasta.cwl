class: CommandLineTool
id: vcf2fasta.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: reference
  doc: Use this reference when decomposing samples.
  type: string
  inputBinding:
    prefix: --reference
- id: prefix
  doc: Affix this output prefix to each file, none by default
  type: string
  inputBinding:
    prefix: --prefix
- id: default_ploidy
  doc: Set a default ploidy for samples which do not have information in the first
    record (2).
  type: string
  inputBinding:
    prefix: --default-ploidy
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2fasta
