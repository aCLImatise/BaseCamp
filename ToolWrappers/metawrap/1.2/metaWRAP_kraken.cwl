class: CommandLineTool
id: metaWRAP_kraken.cwl
inputs:
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_number_of_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
- id: in_read_subsampling_defaultall
  doc: read subsampling number (default=all)
  type: long
  inputBinding:
    prefix: -s
- id: in_no_preload
  doc: do not pre-load the kraken DB into memory (slower, but lower memory requirement)
  type: boolean
  inputBinding:
    prefix: --no-preload
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metaWRAP
- kraken
