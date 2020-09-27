class: CommandLineTool
id: contig_overlap_trimmer.cwl
inputs:
- id: in_no_trim
  doc: Do not trim overlaps
  type: boolean
  inputBinding:
    prefix: --no_trim
- id: in_trim_rev_overlaps
  doc: Trim reversed overlaps
  type: boolean
  inputBinding:
    prefix: --trim_rev_overlaps
- id: in_overlap_offset
  doc: Minimum offset from ends to look for overlaps [1000]
  type: long
  inputBinding:
    prefix: --overlap_offset
- id: in_overlap_boundary_max
  doc: "Maximum boundary of overlap expressed as percentage of\ncontig length [50]"
  type: long
  inputBinding:
    prefix: --overlap_boundary_max
- id: in_overlap_min_length
  doc: Minimum length of a overlap [1000]
  type: long
  inputBinding:
    prefix: --overlap_min_length
- id: in_overlap_max_length
  doc: Maximum length of a overlap [3000]
  type: long
  inputBinding:
    prefix: --overlap_max_length
- id: in_overlap_percent_id
  doc: Minimum acceptable hit percent id for overlaps [85]
  type: long
  inputBinding:
    prefix: --overlap_percent_id
- id: in_min_trim_length
  doc: "Minimum acceptable trimmed length expressed as\npercentage of total contig\
    \ length [0.89]"
  type: double
  inputBinding:
    prefix: --min_trim_length
- id: in_skip
  doc: File of contig ids to skip
  type: File
  inputBinding:
    prefix: --skip
- id: in_debug
  doc: Keep all temp files
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- contig_overlap_trimmer
