class: CommandLineTool
id: add_gff_info_counts.cwl
inputs:
- id: in_verbose
  doc: "-s, --samples TEXT      Sample names, in the same order as the count files\n\
    [required]\n-c, --count-files TEXT  Count file(s)  [required]\n-f, --fpkms   \
    \          If the counts are FPKMS\n-e, --featureCounts     If the counts files\
    \ are from featureCounts\n--progress              Shows Progress Bar\n--help \
    \                 Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add-gff-info
- counts
