#!/usr/bin/env cwl-runner

baseCommand:
- extractSplitReads_BwaMem
class: CommandLineTool
cwlVersion: v1.0
id: extractsplitreads_bwamem
inputs:
- doc: A SAM file or standard input (-i stdin).
  id: in_file
  inputBinding:
    prefix: --inFile
  type: File
- doc: The maximum number of split-read mappings to allow per read. Reads with more
    are excluded. Default=2
  id: num_splits
  inputBinding:
    prefix: --numSplits
  type: long
- doc: Include alignments marked as duplicates. Default=False
  id: included_ups
  inputBinding:
    prefix: --includeDups
  type: boolean
- doc: minimum non-overlap between split alignments on the query (default=20)
  id: min_non_overlap
  inputBinding:
    prefix: --minNonOverlap
  type: long
