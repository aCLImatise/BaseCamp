class: CommandLineTool
id: Circle_Map_Repeats.cwl
inputs:
- id: in_input_coordinate_file
  doc: 'Input: coordinate name sorted bam file'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output
  doc: 'Ouput: Reads indicating circular DNA structural'
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_mismatch
  doc: Number of mismatches allowed on the reads
  type: boolean?
  inputBinding:
    prefix: --mismatch
- id: in_bases
  doc: "Number of bases to extend for computing the coverage\nratio. Default: 200"
  type: boolean?
  inputBinding:
    prefix: --bases
- id: in_cmap_q
  doc: "Minimum mapping quality treshold for coverage\ncomputation. Default: 0"
  type: boolean?
  inputBinding:
    prefix: --cmapq
- id: in_extension
  doc: "Number of bases inside the eccDNA coordinates to\ncompute the ratio. Default:\
    \ 100"
  type: boolean?
  inputBinding:
    prefix: --extension
- id: in_ratio
  doc: 'Minimum in/out required ratio. Default: 0.6'
  type: boolean?
  inputBinding:
    prefix: --ratio
- id: in_fraction
  doc: "Required fraction to merge the intervals of the double\nmapped reads. Default\
    \ 0.8"
  type: boolean?
  inputBinding:
    prefix: --fraction
- id: in_read_number
  doc: Minimum number of reads required to output
  type: boolean?
  inputBinding:
    prefix: --read_number
- id: in_variants
  doc: -dir , --directory   Working directory, default is the working directory
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Repeats
