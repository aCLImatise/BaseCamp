class: CommandLineTool
id: extractSplitReads_BwaMem.cwl
inputs:
- id: in_in_file
  doc: A SAM file or standard input (-i stdin).
  type: File
  inputBinding:
    prefix: --inFile
- id: in_num_splits
  doc: "The maximum number of split-read mappings to allow per\nread. Reads with more\
    \ are excluded. Default=2"
  type: long
  inputBinding:
    prefix: --numSplits
- id: in_included_ups
  doc: Include alignments marked as duplicates. Default=False
  type: boolean
  inputBinding:
    prefix: --includeDups
- id: in_min_non_overlap
  doc: "minimum non-overlap between split alignments on the\nquery (default=20)\n"
  type: long
  inputBinding:
    prefix: --minNonOverlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extractSplitReads_BwaMem
