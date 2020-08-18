class: CommandLineTool
id: ../../../arrive2.cwl
inputs:
- id: ignore_overlap_degrees
  doc: Ignore 3' overlap degrees > <n>
  type: string
  inputBinding:
    prefix: -d
- id: read_length_info
  doc: Get read length info from file <fn>
  type: string
  inputBinding:
    prefix: -L
- id: ignore_reads_shorter
  doc: Ignore reads shorter than <n> bp
  type: string
  inputBinding:
    prefix: -m
- id: use_windows_range
  doc: -<n>  Use windows in the range <m> .. <n>  of reads
  type: string
  inputBinding:
    prefix: -r
- id: fit_minimizing_sum
  doc: Fit by minimizing sum of squared errors instead of |error|
  type: boolean
  inputBinding:
    prefix: -s
- id: fit_minimizing_error
  doc: Fit by minimizing max |error| instead of sum of |error|
  type: boolean
  inputBinding:
    prefix: -x
- id: ignore_reads_overlaps
  doc: Ignore reads with no overlaps at all
  type: boolean
  inputBinding:
    prefix: -z
- id: lo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hi
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: del
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- arrive2
