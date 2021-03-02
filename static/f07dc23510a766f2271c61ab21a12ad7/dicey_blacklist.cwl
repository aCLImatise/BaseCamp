class: CommandLineTool
id: dicey_blacklist.cwl
inputs:
- id: in_arg_blacklist_bed
  doc: "[ --blacklist ] arg (=\"blacklist.bed\")\nblacklist in BED format"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_gzipped_output
  doc: '[ --outfile ] arg (="map.fa.gz")   gzipped output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_danio_rerio_dot_fado_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_gzipped_output
  doc: '[ --outfile ] arg (="map.fa.gz")   gzipped output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_output)
hints: []
cwlVersion: v1.1
baseCommand:
- dicey
- blacklist
