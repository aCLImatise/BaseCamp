class: CommandLineTool
id: eagle_convert.cwl
inputs:
- id: input
  doc: the input in vcf format
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: the output directory
  type: string
  inputBinding:
    position: 1
- id: samples
  doc: '[SAMPLES [SAMPLES ...]] limit the output creation to these samples'
  type: boolean
  inputBinding:
    prefix: --samples
- id: ref
  doc: the reference in fasta format to extract a variant motifs information
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- eagle
- convert
