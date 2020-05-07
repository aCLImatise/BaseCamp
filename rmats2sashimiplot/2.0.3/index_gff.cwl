class: CommandLineTool
id: index_gff.cwl
inputs:
- id: index
  doc: Index the given GFF. Takes as arguments as GFF filename and an output directory.
  type: string
  inputBinding:
    prefix: --index
- id: compress_id
  doc: Use the compressed version of the GFF 'ID=' field rather than the ID itself
    when creating .miso output filenames.
  type: boolean
  inputBinding:
    prefix: --compress-id
outputs: []
cwlVersion: v1.1
baseCommand:
- index_gff
