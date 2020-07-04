class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scram_test.cwl
inputs:
- id: set_input_format
  doc: 'Set input format:  "bam", "sam" or "cram".'
  type: string
  inputBinding:
    prefix: -I
- id: specifies_refseqstartend_range
  doc: '[Cram] Specifies the refseq:start-end range'
  type: string
  inputBinding:
    prefix: -R
- id: specifies_reference_file
  doc: '[Cram] Specifies the reference file.'
  type: string
  inputBinding:
    prefix: -r
- id: use_n_threads
  doc: Use N threads (availability varies by format)
  type: string
  inputBinding:
    prefix: -t
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scram_test
