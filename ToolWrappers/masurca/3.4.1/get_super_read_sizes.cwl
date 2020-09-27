class: CommandLineTool
id: get_super_read_sizes.cwl
inputs:
- id: in_kuni_tig_lenghts_file
  doc: '*file with k-unitig lengths, two columns: kunitig length'
  type: File
  inputBinding:
    prefix: --kunitig_lenghts_file
- id: in_super_reads_file
  doc: '*file with super-read names'
  type: File
  inputBinding:
    prefix: --super_reads_file
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_super_read_sizes
