class: CommandLineTool
id: ../../../Circle_Map_Repeats.cwl
inputs:
- id: input_coordinate_sorted
  doc: 'Input: coordinate name sorted bam file'
  type: boolean
  inputBinding:
    prefix: -i
- id: _output_reads
  doc: ', --output        Ouput: Reads indicating circular DNA structural variants'
  type: boolean
  inputBinding:
    prefix: -o
- id: dir
  doc: ', --directory   Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: _mismatch_number
  doc: ', --mismatch      Number of mismatches allowed on the reads'
  type: boolean
  inputBinding:
    prefix: -m
- id: _bases_number
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
- id: _extension_number
  doc: ', --extension     Number of bases inside the eccDNA coordinates to compute
    the ratio. Default: 100'
  type: boolean
  inputBinding:
    prefix: -E
- id: _ratio_minimum
  doc: ', --ratio         Minimum in/out required ratio. Default: 0.6'
  type: boolean
  inputBinding:
    prefix: -r
- id: _fraction_required
  doc: ', --fraction      Required fraction to merge the intervals of the double mapped
    reads. Default 0.8'
  type: boolean
  inputBinding:
    prefix: -f
- id: _readnumber_minimum
  doc: ', --read_number   Minimum number of reads required to output'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Repeats
