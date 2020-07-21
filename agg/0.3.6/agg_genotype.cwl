class: CommandLineTool
id: ../../../agg_genotype.cwl
inputs:
- id: regions
  doc: region to genotype eg. chr1 or chr20:5000000-6000000
  type: string
  inputBinding:
    prefix: --regions
- id: _outputfile_file
  doc: ',   --output-file <file>          output file name [stdout]'
  type: boolean
  inputBinding:
    prefix: -o
- id: _outputtype_buzv
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
- id: chunk_one
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agg
- genotype
