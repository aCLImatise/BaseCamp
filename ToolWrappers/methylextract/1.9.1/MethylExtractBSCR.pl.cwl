class: CommandLineTool
id: MethylExtractBSCR.pl.cwl
inputs:
- id: in_accepted_parameter_check
  doc: not an accepted parameter, please check spelling and case sensitive
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MethylExtractBSCR.pl
