class: CommandLineTool
id: htsbox_vcfview.cwl
inputs:
- id: b
  doc: output in BCF
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: input is VCF
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: l
  doc: compression level [-1]
  type: long
  inputBinding:
    prefix: -l
- id: t
  doc: list of reference names and lengths [null]
  type: File
  inputBinding:
    prefix: -t
- id: s
  doc: /STR  list of samples (STR if started with ':'; FILE otherwise) [null]
  type: File
  inputBinding:
    prefix: -s
- id: g
  doc: drop individual genotype information
  type: boolean
  inputBinding:
    prefix: -G
- id: i
  doc: exclude INDELs
  type: boolean
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- vcfview
