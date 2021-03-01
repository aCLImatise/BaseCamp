class: CommandLineTool
id: arrive2.cwl
inputs:
- id: in_ignore_overlap_degrees
  doc: Ignore 3' overlap degrees > <n>
  type: long?
  inputBinding:
    prefix: -d
- id: in_read_length_info
  doc: Get read length info from file <fn>
  type: long?
  inputBinding:
    prefix: -L
- id: in_ignore_reads_shorter
  doc: Ignore reads shorter than <n> bp
  type: string?
  inputBinding:
    prefix: -m
- id: in_use_windows_m
  doc: -<n>  Use windows in the range <m> .. <n>  of reads
  type: string?
  inputBinding:
    prefix: -r
- id: in_fit_minimizing_sum
  doc: Fit by minimizing sum of squared errors instead of |error|
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_fit_minimizing_error
  doc: Fit by minimizing max |error| instead of sum of |error|
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_ignore_reads_all
  doc: Ignore reads with no overlaps at all
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_lo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hi
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_del
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrive2
