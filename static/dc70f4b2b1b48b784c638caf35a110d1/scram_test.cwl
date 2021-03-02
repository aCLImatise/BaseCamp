class: CommandLineTool
id: scram_test.cwl
inputs:
- id: in_set_input_format
  doc: 'Set input format:  "bam", "sam" or "cram".'
  type: string?
  inputBinding:
    prefix: -I
- id: in_specifies_refseqstartend_range
  doc: '[Cram] Specifies the refseq:start-end range'
  type: string?
  inputBinding:
    prefix: -R
- id: in_specifies_reference_file
  doc: '[Cram] Specifies the reference file.'
  type: File?
  inputBinding:
    prefix: -r
- id: in_use_n_threads
  doc: Use N threads (availability varies by format)
  type: string?
  inputBinding:
    prefix: -t
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scram_test
