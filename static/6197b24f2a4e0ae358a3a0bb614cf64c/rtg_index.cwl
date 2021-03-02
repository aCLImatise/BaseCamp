class: CommandLineTool
id: rtg_index.cwl
inputs:
- id: in_format
  doc: "format of input to index. Allowed values are [sam,\nbam, cram, sv, coveragetsv,\
    \ bed, vcf, auto]\n(Default is auto)"
  type: string?
  inputBinding:
    prefix: --format
- id: in_input_list_file
  doc: "file containing a list of block compressed files\n(1 per line) containing\
    \ genome position data\nFILE+                  block compressed files containing\
    \ data to be\nindexed. May be specified 0 or more times"
  type: File?
  inputBinding:
    prefix: --input-list-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rtg
- index
