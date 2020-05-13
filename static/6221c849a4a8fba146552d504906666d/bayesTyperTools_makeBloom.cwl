class: CommandLineTool
id: bayesTyperTools_makeBloom.cwl
inputs:
- id: k
  doc: '[ --kmc-table-prefix ] arg       KMC kmer table prefix. Output is written
    as <kmc-table-prefix>.bloomMeta and <kmc-table-prefix>.bloomData.'
  type: boolean
  inputBinding:
    prefix: -k
- id: p
  doc: '[ --num-threads ] arg (=1)       number of threads used (+= 1 I/O thread).'
  type: boolean
  inputBinding:
    prefix: -p
- id: false_positive_rate
  doc: (=0.001)  bloom filter false positive rate.
  type: string
  inputBinding:
    prefix: --false-positive-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- makeBloom
