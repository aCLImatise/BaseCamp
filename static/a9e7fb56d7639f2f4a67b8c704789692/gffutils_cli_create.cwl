class: CommandLineTool
id: gffutils_cli_create.cwl
inputs:
- id: filename
  doc: GFF or GTF file to use
  type: File
  inputBinding:
    position: 0
- id: output
  doc: 'Database to create. Default is to append ".db" to the end of the input filename
    (default: -)'
  type: string
  inputBinding:
    prefix: --output
- id: force
  doc: 'Overwrite an existing database (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: 'Suppress the reporting of timing information when creating the database (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: merge
  doc: "Merge strategy to be used if if duplicate IDs are found. (default: 'merge')"
  type: string
  inputBinding:
    prefix: --merge
- id: disable_infer_genes
  doc: 'Disable inferring of gene extents for GTF files. Use this if your GTF file
    already has "gene" featuretypes (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-infer-genes
- id: disable_infer_transcripts
  doc: 'Disable inferring of transcript extents for GTF files. Use this if your GTF
    file already has "transcript" featuretypes (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-infer-transcripts
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- create
