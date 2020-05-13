class: CommandLineTool
id: fastq_sort.cwl
inputs:
- id: reverse
  doc: sort in reverse (i.e., descending) order
  type: boolean
  inputBinding:
    prefix: --reverse
- id: id
  doc: sort alphabetically by read identifier
  type: boolean
  inputBinding:
    prefix: --id
- id: idn
  doc: sort alphanumerically by read identifier according to "samtools sort -n"
  type: boolean
  inputBinding:
    prefix: --idn
- id: seq
  doc: sort alphabetically by sequence
  type: boolean
  inputBinding:
    prefix: --seq
- id: random
  doc: randomly shuffle the sequences
  type: boolean
  inputBinding:
    prefix: --random
- id: seed
  doc: '[=SEED]  seed to use for random shuffle.'
  type: boolean
  inputBinding:
    prefix: --seed
- id: gc
  doc: sort by GC content
  type: boolean
  inputBinding:
    prefix: --gc
- id: mean_qual
  doc: sort by median quality score
  type: boolean
  inputBinding:
    prefix: --mean-qual
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-sort
