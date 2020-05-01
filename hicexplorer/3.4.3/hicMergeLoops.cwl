#!/usr/bin/env cwl-runner

baseCommand:
- hicMergeLoops
class: CommandLineTool
cwlVersion: v1.0
id: hicmergeloops
inputs:
- doc: The loop files from hicDetectLoops. To use files from other sources, please
    follow 'chr start end chr start end' format and remove any header.
  id: input_files
  inputBinding:
    prefix: --inputFiles
  type:
    items: string
    type: array
- doc: The name of the merged loop file.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: The lowest resolution of all loop files, i.e. 5kb, 10kb and 25kb, please use
    25000.
  id: lowest_resolution
  inputBinding:
    prefix: --lowestResolution
  type: string
