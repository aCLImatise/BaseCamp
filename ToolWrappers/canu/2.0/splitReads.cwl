class: CommandLineTool
id: splitReads.cwl
inputs:
- id: in_path_read_store
  doc: path to read store
  type: File
  inputBinding:
    prefix: -S
- id: in_path_overlap_store
  doc: path to overlap store
  type: File
  inputBinding:
    prefix: -O
- id: in_output_prefix_logging
  doc: output prefix, for logging
  type: string
  inputBinding:
    prefix: -o
- id: in_limit_processing_reads
  doc: limit processing to only reads from bgn to end (inclusive)
  type: string
  inputBinding:
    prefix: -t
- id: in_ci
  doc: path to input clear ranges
  type: File
  inputBinding:
    prefix: -Ci
- id: in_co
  doc: path to ouput clear ranges
  type: File
  inputBinding:
    prefix: -Co
- id: in_ignore_overlaps_more
  doc: ignore overlaps with more than 'erate' percent error
  type: string
  inputBinding:
    prefix: -e
- id: in_minlength
  doc: reads trimmed below this many bases are deleted
  type: string
  inputBinding:
    prefix: -minlength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splitReads
