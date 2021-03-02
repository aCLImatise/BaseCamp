class: CommandLineTool
id: hicMergeLoops.cwl
inputs:
- id: in_input_files
  doc: "The loop files from hicDetectLoops. To use files from\nother sources, please\
    \ follow 'chr start end chr start\nend' format and remove any header."
  type: string[]
  inputBinding:
    prefix: --inputFiles
- id: in_out_filename
  doc: The name of the merged loop file.
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_lowest_resolution
  doc: "The lowest resolution of all loop files, i.e. 5kb,\n10kb and 25kb, please\
    \ use 25000."
  type: long?
  inputBinding:
    prefix: --lowestResolution
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: The name of the merged loop file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicMergeLoops
