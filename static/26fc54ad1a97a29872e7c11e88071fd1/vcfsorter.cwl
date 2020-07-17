class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfsorter.pl.cwl
inputs:
- id: genome_dot_dict
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: my_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfsorter.pl
