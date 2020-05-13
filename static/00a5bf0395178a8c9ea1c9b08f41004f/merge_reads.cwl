class: CommandLineTool
id: merge_reads.py.cwl
inputs:
- id: merged
  doc: It outputs the merged reads as FASTQ file.
  type: string
  inputBinding:
    prefix: --merged
- id: forward
  doc: It outputs the un-merged reads as FASTQ file.
  type: string
  inputBinding:
    prefix: --forward
- id: reverse
  doc: It outputs the un-merged reads as FASTQ file.
  type: string
  inputBinding:
    prefix: --reverse
- id: alignment
  doc: It outputs also the alignment for each found overlapping.
  type: string
  inputBinding:
    prefix: --alignment
- id: fragment_size
  doc: It outputs the fragment size for paired reads which are found to overlap.
  type: string
  inputBinding:
    prefix: --fragment-size
- id: overlap
  doc: The minimum length of the region which is considered an overlap. Default is
    11.
  type: string
  inputBinding:
    prefix: --overlap
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
- merge-reads.py
