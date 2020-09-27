class: CommandLineTool
id: agg_genotype.cwl
inputs:
- id: in_regions
  doc: region to genotype eg. chr1 or chr20:5000000-6000000
  type: long
  inputBinding:
    prefix: --regions
- id: in__outputfile_file
  doc: ',   --output-file <file>          output file name [stdout]'
  type: File
  inputBinding:
    prefix: -o
- id: in__outputtype_buzv
  doc: ',   --output-type <b|u|z|v>       b: compressed BCF, u: uncompressed BCF,
    z: compressed VCF, v: uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: -O
- id: in_thread
  doc: number of threads [0]
  type: long
  inputBinding:
    prefix: --thread
- id: in_chunk_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfile_file
  doc: ',   --output-file <file>          output file name [stdout]'
  type: File
  outputBinding:
    glob: $(inputs.in__outputfile_file)
cwlVersion: v1.1
baseCommand:
- agg
- genotype
