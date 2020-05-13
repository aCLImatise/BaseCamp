class: CommandLineTool
id: fml_asm.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: e
  doc: k-mer length for error correction (0 for auto; -1 to disable) [0]
  type: long
  inputBinding:
    prefix: -e
- id: c
  doc: range of k-mer & read count thresholds for ec and graph cleaning [4,8]
  type:
  - long
  inputBinding:
    prefix: -c
- id: l
  doc: min overlap length during initial assembly [33]
  type: long
  inputBinding:
    prefix: -l
- id: r
  doc: drop an overlap if its length is below maxOvlpLen*FLOAT [0.7]
  type: double
  inputBinding:
    prefix: -r
- id: t
  doc: number of threads (don't use multi-threading for small data sets) [1]
  type: long
  inputBinding:
    prefix: -t
- id: a
  doc: discard heterozygotes (apply this to assemble bacterial genomes)
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- fml-asm
