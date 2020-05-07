class: CommandLineTool
id: agg_genotype.cwl
inputs:
- id: regions
  doc: region to genotype eg. chr1 or chr20:5000000-6000000
  type: string
  inputBinding:
    prefix: --regions
- id: o
  doc: ',   --output-file <file>          output file name [stdout]'
  type: boolean
  inputBinding:
    prefix: -o
- id: o
  doc: ',   --output-type <b|u|z|v>       b: compressed BCF, u: uncompressed BCF,
    z: compressed VCF, v: uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: -O
- id: thread
  doc: number of threads [0]
  type: long
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- agg
- genotype
