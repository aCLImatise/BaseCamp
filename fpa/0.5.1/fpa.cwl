class: CommandLineTool
id: ../../../fpa.cwl
inputs:
- id: in_compression_out
  doc: "Output compression format, the input compression format is chosen by default\
    \ [possible values: gzip, bzip2,\nlzma, no]"
  type: long
  inputBinding:
    prefix: --compression-out
- id: in_format
  doc: 'Force the format used [possible values: paf, m4]'
  type: long
  inputBinding:
    prefix: --format
- id: in_input
  doc: "Path to input file, use '-' for stdin [default: -]"
  type: File
  inputBinding:
    prefix: --input
- id: in_internal_threshold
  doc: "A match is internal match if overhang length > match length * internal threshold\
    \ this option set internal\nmatch [default: 0.8]"
  type: long
  inputBinding:
    prefix: --internal-threshold
- id: in_output
  doc: "Path to output file, use '-' for stdout [default: -]"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to output file, use '-' for stdout [default: -]"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- fpa
