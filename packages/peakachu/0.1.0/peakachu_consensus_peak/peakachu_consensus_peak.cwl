class: CommandLineTool
id: peakachu_consensus_peak.cwl
inputs:
- id: in_consensus_length
  doc: "Length of the region around peak centers for plotting\nconsensus peaks\n"
  type: long
  inputBinding:
    prefix: --consensus_length
- id: in_project_folder
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- peakachu
- consensus_peak
