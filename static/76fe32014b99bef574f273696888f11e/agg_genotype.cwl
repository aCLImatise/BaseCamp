class: CommandLineTool
id: agg_genotype.cwl
inputs:
- id: in_regions
  doc: region to genotype eg. chr1 or chr20:5000000-6000000
  type: long?
  inputBinding:
    prefix: --regions
- id: in_output_file
  doc: output file name [stdout]
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_thread
  doc: number of threads [0]
  type: long?
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
- id: out_output_file
  doc: output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- agg
- genotype
