class: CommandLineTool
id: hicMergeLoops.cwl
inputs:
- id: input_files
  doc: The loop files from hicDetectLoops. To use files from other sources, please
    follow 'chr start end chr start end' format and remove any header.
  type: string[]
  inputBinding:
    prefix: --inputFiles
- id: out_filename
  doc: The name of the merged loop file.
  type: string
  inputBinding:
    prefix: --outFileName
- id: lowest_resolution
  doc: The lowest resolution of all loop files, i.e. 5kb, 10kb and 25kb, please use
    25000.
  type: string
  inputBinding:
    prefix: --lowestResolution
outputs: []
cwlVersion: v1.1
baseCommand:
- hicMergeLoops
