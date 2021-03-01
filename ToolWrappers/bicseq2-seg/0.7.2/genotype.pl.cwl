class: CommandLineTool
id: genotype.pl.cwl
inputs:
- id: in_tmp
  doc: ': the tmp directory; If unspecified, use /usr/local/bin/tmp/'
  type: Directory?
  inputBinding:
    prefix: --tmp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genotype.pl
