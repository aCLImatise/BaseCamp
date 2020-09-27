class: CommandLineTool
id: dicey_mappability.cwl
inputs:
- id: in_arg_gzipped_file
  doc: '[ --outfile ] arg (="map.fa.gz")   gzipped output file'
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_read_length
  doc: '[ --readlength ] arg (=51)         read length'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_chromosome_index
  doc: '[ --chromosome ] arg (=-1)         chromosome index (-1: all)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_arg_chunk_start
  doc: '[ --chunkStart ] arg (=-1)         chunk start (optional)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_chunk_end
  doc: '[ --chunkEnd ] arg (=-1)           chunk end (optional)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_max_distance
  doc: '[ --maxEditDistance ] arg (=1)     max. edit distance'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_arg_neighborhood_size
  doc: '[ --maxNeighborhood ] arg (=10000) max. neighborhood size'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_danio_rerio_dot_fado_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_gzipped_file
  doc: '[ --outfile ] arg (="map.fa.gz")   gzipped output file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_gzipped_file)
cwlVersion: v1.1
baseCommand:
- dicey
- mappability
