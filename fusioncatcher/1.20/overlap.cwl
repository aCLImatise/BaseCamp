class: CommandLineTool
id: overlap.py.cwl
inputs:
- id: output
  doc: It gives a statistics regarding the amount of mate reads which are overlapping.
  type: string
  inputBinding:
    prefix: --output
- id: alignment
  doc: It outputs also the alignment for each found overlapping.
  type: string
  inputBinding:
    prefix: --alignment
- id: merged
  doc: It outputs in the alignment file, the info for merging the paired-end reads
    (len_read_1,len_read_2,mismatches _in_overlapping_region).
  type: boolean
  inputBinding:
    prefix: --merged
- id: fragment_size
  doc: It outputs the fragment size for paired reads which are found to overlap.
  type: string
  inputBinding:
    prefix: --fragment-size
- id: overlap
  doc: The minimum length of the region which is considered an overlap. Default is
    13.
  type: string
  inputBinding:
    prefix: --overlap
- id: fail_gracefully
  doc: Fail gracefully in case the the input reads have different lengths. Default
    is False.
  type: boolean
  inputBinding:
    prefix: --fail-gracefully
- id: processes
  doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  type: string
  inputBinding:
    prefix: --processes
outputs: []
cwlVersion: v1.1
baseCommand:
- overlap.py
