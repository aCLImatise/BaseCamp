class: CommandLineTool
id: Circle_Map_Repeats.cwl
inputs:
- id: i
  doc: 'Input: coordinate name sorted bam file'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ', --output        Ouput: Reads indicating circular DNA structural variants'
  type: boolean
  inputBinding:
    prefix: -o
- id: dir
  doc: ', --directory   Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: m
  doc: ', --mismatch      Number of mismatches allowed on the reads'
  type: boolean
  inputBinding:
    prefix: -m
- id: b
  doc: ', --bases         Number of bases to extend for computing the coverage ratio.
    Default: 200'
  type: boolean
  inputBinding:
    prefix: -b
- id: cq
  doc: ', --cmapq        Minimum mapping quality treshold for coverage computation.
    Default: 0'
  type: boolean
  inputBinding:
    prefix: -cq
- id: e
  doc: ', --extension     Number of bases inside the eccDNA coordinates to compute
    the ratio. Default: 100'
  type: boolean
  inputBinding:
    prefix: -E
- id: r
  doc: ', --ratio         Minimum in/out required ratio. Default: 0.6'
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: ', --fraction      Required fraction to merge the intervals of the double mapped
    reads. Default 0.8'
  type: boolean
  inputBinding:
    prefix: -f
- id: n
  doc: ', --read_number   Minimum number of reads required to output'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Repeats
