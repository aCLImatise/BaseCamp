class: CommandLineTool
id: scram_flagstat.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: 'Set input format:  "bam", "sam" or "cram".'
  type: string
  inputBinding:
    prefix: -I
- id: r
  doc: '[Cram] Specifies the refseq:start-end range'
  type: string
  inputBinding:
    prefix: -R
- id: r
  doc: '[Cram] Specifies the reference file.'
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: Use N threads (availability varies by format)
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- scram_flagstat
