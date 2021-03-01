class: CommandLineTool
id: pyfastx_subseq.cwl
inputs:
- id: in_region_file
  doc: "tab-delimited file, one region per line, both start\nand end position are\
    \ 1-based"
  type: File?
  inputBinding:
    prefix: --region-file
- id: in_bed_file
  doc: "tab-delimited BED file, 0-based start position and\n1-based end position"
  type: File?
  inputBinding:
    prefix: --bed-file
- id: in_out_file
  doc: "output file, default: output to stdout\n"
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_fast_x
  doc: input fasta file, gzip support
  type: string
  inputBinding:
    position: 0
- id: in_region
  doc: "format is chr:start-end, start and end position is\n1-based, multiple regions\
    \ were separated by space"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "output file, default: output to stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- pyfastx
- subseq
