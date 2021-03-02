class: CommandLineTool
id: gffutils_cli_create.cwl
inputs:
- id: in_output
  doc: "Database to create. Default is to append \".db\" to the\nend of the input\
    \ filename (default: -)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_force
  doc: 'Overwrite an existing database (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: "Suppress the reporting of timing information when\ncreating the database (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_merge
  doc: "Merge strategy to be used if if duplicate IDs are\nfound. (default: 'merge')"
  type: string?
  inputBinding:
    prefix: --merge
- id: in_disable_infer_genes
  doc: "Disable inferring of gene extents for GTF files. Use\nthis if your GTF file\
    \ already has \"gene\" featuretypes\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --disable-infer-genes
- id: in_disable_infer_transcripts
  doc: "Disable inferring of transcript extents for GTF files.\nUse this if your GTF\
    \ file already has \"transcript\"\nfeaturetypes (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --disable-infer-transcripts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- create
