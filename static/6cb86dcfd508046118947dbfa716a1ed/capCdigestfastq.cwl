class: CommandLineTool
id: capCdigestfastq.cwl
inputs:
- id: o
  doc: output_fq   is the name of the output fastq file
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: SEQ         is the sequence of the restriction enzyme must be characters ACGT
    only
  type: boolean
  inputBinding:
    prefix: -e
- id: p
  doc: X           is the bp position within SEQ where the cut will occur (first base
    is 1; Xth base will be the start of the right hand fragment)
  type: boolean
  inputBinding:
    prefix: -p
- id: long
  doc: option switches on 'long' mode, where only the longest of the restriction fragments
    in each of the pairs is kept
  type: boolean
  inputBinding:
    prefix: --long
outputs: []
cwlVersion: v1.1
baseCommand:
- capCdigestfastq
