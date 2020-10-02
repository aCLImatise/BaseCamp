class: CommandLineTool
id: genomeCoverageBed.pl.cwl
inputs:
- id: in_exist_usrlocalbingenomecoveragebedpl_line
  doc: not exist at /usr/local/bin/genomeCoverageBed.pl line 10.
  type: long
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genomeCoverageBed.pl
