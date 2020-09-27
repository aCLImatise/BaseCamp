class: CommandLineTool
id: diamond_add_taxonomy.cwl
inputs:
- id: in_tax_dump_filename
  doc: Path to local copy of NCBI taxdump.tar.gz file
  type: File
  inputBinding:
    prefix: --taxdump_filename
- id: in_tax_db_filename
  doc: "Name for the processed database, will be\nloaded if it exists"
  type: File
  inputBinding:
    prefix: --taxdb_filename
- id: in_diamond_output_format
  doc: "Output format used by DIAMOND (most include\nstaxids)  [default: 6 qseqid\
    \ sseqid pident\nlength mismatch gapopen qstart qend sstart\nsend evalue bitscore\
    \ slen qlen qcovhsp stitle\nstaxids]"
  type: long
  inputBinding:
    prefix: --diamond_output_format
- id: in_output_file
  doc: "Output file to write output with expanded\ntaxonomy information (TSV format)"
  type: File
  inputBinding:
    prefix: --output_file
- id: in_stax_ids
  doc: A new output file is created with 7 extra columns on the right hand side
  type: string
  inputBinding:
    position: 0
- id: in_column_dot
  doc: The taxonomy lookup is performed using the NCBI taxonomy database via ete3
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output file to write output with expanded\ntaxonomy information (TSV format)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- diamond_add_taxonomy
