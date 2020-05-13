class: CommandLineTool
id: split_reads.cwl
inputs:
- id: l
  doc: '[ --split_length ] arg (=35) Length of prefix/suffix to be extracted.'
  type: boolean
  inputBinding:
    prefix: -l
- id: single_end
  doc: Process single end reads (instead of paired  end).
  type: boolean
  inputBinding:
    prefix: --single-end
outputs: []
cwlVersion: v1.1
baseCommand:
- split-reads
