class: CommandLineTool
id: genotype.pl.cwl
inputs:
- id: tmp
  doc: ': the tmp directory; If unspecified, use /tmp/tmpq0pilrwk/bin/tmp/'
  type: string
  inputBinding:
    prefix: --tmp
outputs: []
cwlVersion: v1.1
baseCommand:
- genotype.pl
