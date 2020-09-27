class: CommandLineTool
id: vcf_strip_extra_headers.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf_strip_extra_headers
