class: CommandLineTool
id: novoutil_bgzf.cwl
inputs:
- id: in_sets_number_server
  doc: "Sets the number of threads. Defaults to number of cores\non the server."
  type: long?
  inputBinding:
    prefix: -c
- id: in_sets_block_size
  doc: "Sets the block size in kilobytes, defaults to 64K bytes.\nIf set <=64K then\
    \ files are compatible with tabix and BAM\nspecifications.\nAbove 64K may be useful\
    \ for fast general purpose compression."
  type: long?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- bgzf
