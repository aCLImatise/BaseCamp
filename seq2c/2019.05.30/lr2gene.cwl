class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lr2gene.pl.cwl
inputs:
- id: breakpoint_detected_more
  doc: 'If a breakpoint has been detected more than "int" samples, it is considered
    false positives and removed. Default: 5.  Use in combination with -R.'
  type: long
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- lr2gene.pl
