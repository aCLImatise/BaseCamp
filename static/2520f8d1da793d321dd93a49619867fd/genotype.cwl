class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genotype.pl.cwl
inputs:
- id: tmp
  doc: ': the tmp directory; If unspecified, use /tmp/tmpsomb5k_a/bin/tmp/'
  type: string
  inputBinding:
    prefix: --tmp
outputs: []
cwlVersion: v1.1
baseCommand:
- genotype.pl
