class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mutscan.cwl
inputs:
- id: simplified
  doc: simplified mode uses less RAM but reports less information. This option can
    be auto/on/off, by default it's auto, which means automatically enabled when processing
    large FASTQ with large VCF. (string [=auto])
  type: boolean
  inputBinding:
    prefix: --simplified
- id: verbose
  doc: enable verbose mode, more information will be output in STDERR
  type: boolean
  inputBinding:
    prefix: --verbose
- id: read_one
  doc: ''
  type: string
  inputBinding:
    prefix: --read1
outputs: []
cwlVersion: v1.1
baseCommand:
- mutscan
