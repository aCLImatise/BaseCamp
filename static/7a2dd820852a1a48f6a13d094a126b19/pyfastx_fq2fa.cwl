class: CommandLineTool
id: pyfastx_fq2fa.cwl
inputs:
- id: in_out_file
  doc: "output file, default: output to stdout\n"
  type: File
  inputBinding:
    prefix: --out-file
- id: in_fast_x
  doc: fastq file, gzip support
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "output file, default: output to stdout\n"
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- pyfastx
- fq2fa
