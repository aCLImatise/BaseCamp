class: CommandLineTool
id: sam_to_bam.cwl
inputs:
- id: in_convert
  doc: "Convert given SAM file to indexed, sorted BAM file with\nheaders. Takes SAM\
    \ filename and output directory."
  type: File?
  inputBinding:
    prefix: --convert
- id: in_ref
  doc: References file to use to get chromosome lengths.
  type: File?
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_convert
  doc: "Convert given SAM file to indexed, sorted BAM file with\nheaders. Takes SAM\
    \ filename and output directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_convert)
hints: []
cwlVersion: v1.1
baseCommand:
- sam_to_bam
