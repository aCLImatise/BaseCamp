class: CommandLineTool
id: split_reads.cwl
inputs:
- id: in_arg_length_prefixsuffix
  doc: '[ --split_length ] arg (=35) Length of prefix/suffix to be extracted.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_single_end
  doc: "Process single end reads (instead of paired\nend).\n"
  type: boolean
  inputBinding:
    prefix: --single-end
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- split-reads
