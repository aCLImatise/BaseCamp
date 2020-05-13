class: CommandLineTool
id: diamond_add_taxonomy.cwl
inputs:
- id: tax_dump_filename
  doc: Path to local copy of NCBI taxdump.tar.gz file
  type: File
  inputBinding:
    prefix: --taxdump_filename
- id: tax_db_filename
  doc: Name for the processed database, will be loaded if it exists
  type: File
  inputBinding:
    prefix: --taxdb_filename
- id: diamond_output_format
  doc: 'Output format used by DIAMOND (most include staxids)  [default: 6 qseqid sseqid
    pident length mismatch gapopen qstart qend sstart send evalue bitscore slen qlen
    qcovhsp stitle staxids]'
  type: string
  inputBinding:
    prefix: --diamond_output_format
- id: output_file
  doc: Output file to write output with expanded taxonomy information (TSV format)
  type: File
  inputBinding:
    prefix: --output_file
outputs: []
cwlVersion: v1.1
baseCommand:
- diamond_add_taxonomy
