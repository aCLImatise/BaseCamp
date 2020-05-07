class: CommandLineTool
id: extractSplitReads_BwaMem.cwl
inputs:
- id: in_file
  doc: A SAM file or standard input (-i stdin).
  type: File
  inputBinding:
    prefix: --inFile
- id: num_splits
  doc: The maximum number of split-read mappings to allow per read. Reads with more
    are excluded. Default=2
  type: long
  inputBinding:
    prefix: --numSplits
- id: included_ups
  doc: Include alignments marked as duplicates. Default=False
  type: boolean
  inputBinding:
    prefix: --includeDups
- id: min_non_overlap
  doc: minimum non-overlap between split alignments on the query (default=20)
  type: long
  inputBinding:
    prefix: --minNonOverlap
outputs: []
cwlVersion: v1.1
baseCommand:
- extractSplitReads_BwaMem
