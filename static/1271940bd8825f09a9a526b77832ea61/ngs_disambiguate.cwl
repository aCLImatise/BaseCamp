class: CommandLineTool
id: ngs_disambiguate.cwl
inputs:
- id: ngs_disambiguate
  doc: '[-d] -s <string> -o <string> [-a <string>] [--] [--version] [-h] <A> <B>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ngs_disambiguate
