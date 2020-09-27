class: CommandLineTool
id: Circle_Map_Repeats.cwl
inputs:
- id: in_input_coordinate_name
  doc: 'Input: coordinate name sorted bam file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__output_ouput
  doc: ', --output        Ouput: Reads indicating circular DNA structural'
  type: boolean
  inputBinding:
    prefix: -o
- id: in__mismatch_number
  doc: ', --mismatch      Number of mismatches allowed on the reads'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__bases_number
  doc: ", --bases         Number of bases to extend for computing the coverage\nratio.\
    \ Default: 200"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_cq
  doc: ", --cmapq        Minimum mapping quality treshold for coverage\ncomputation.\
    \ Default: 0"
  type: boolean
  inputBinding:
    prefix: -cq
- id: in__extension_number
  doc: ", --extension     Number of bases inside the eccDNA coordinates to\ncompute\
    \ the ratio. Default: 100"
  type: boolean
  inputBinding:
    prefix: -E
- id: in__ratio_inout
  doc: ', --ratio         Minimum in/out required ratio. Default: 0.6'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__fraction_fraction
  doc: ", --fraction      Required fraction to merge the intervals of the double\n\
    mapped reads. Default 0.8"
  type: boolean
  inputBinding:
    prefix: -f
- id: in__readnumber_minimum
  doc: ', --read_number   Minimum number of reads required to output'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_variants
  doc: -dir , --directory   Working directory, default is the working directory
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Repeats
