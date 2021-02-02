class: CommandLineTool
id: ../../../peakCenters.cwl
inputs:
- id: in_numberthis_will_add
  doc: "NUMBER\nThis will add NUMBER bases before and after the start and stop coordinates\n\
    for the peak. The default value is 100. You can set it to 0 if you just\nwant\
    \ the peak coordinates."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_process_a_file
  doc: Process a "_vis.bed" file instead of an "_analysis.bed" file.
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- peakCenters
