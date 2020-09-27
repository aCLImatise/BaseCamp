class: CommandLineTool
id: blobtools_taxify.cwl
inputs:
- id: in_hit_file
  doc: "BLAST/Diamond similarity search result (TSV format).\nDefaults assume \"-outfmt\
    \ '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue\
    \ bitscore'\""
  type: File
  inputBinding:
    prefix: --hit_file
- id: in_hit_column_q_seq_id
  doc: "Zero-based column of qseqid in similarity search result [default: 0]\nChange\
    \ if different format than (-outfmt '6')"
  type: long
  inputBinding:
    prefix: --hit_column_qseqid
- id: in_hit_column_s_seq_id
  doc: "Zero-based column of sseqid in similarity search result [default: 1]\nChange\
    \ if different format than (-outfmt '6')"
  type: long
  inputBinding:
    prefix: --hit_column_sseqid
- id: in_hit_column_score
  doc: "Zero-based column of (bit)score in similarity search result [default: 11]\n\
    Change if different format than (-outfmt '6')"
  type: long
  inputBinding:
    prefix: --hit_column_score
- id: in_taxid_mapping_file
  doc: TaxID mapping file (contains seqid and taxid)
  type: File
  inputBinding:
    prefix: --taxid_mapping_file
- id: in_map_col_s_seq_id
  doc: Zero-based column of sseqid in TaxID mapping file (it will search for sseqid
    in this column)
  type: long
  inputBinding:
    prefix: --map_col_sseqid
- id: in_map_col_taxid
  doc: Zero-based Column of taxid in TaxID mapping file (it will extract for taxid
    from this column)
  type: long
  inputBinding:
    prefix: --map_col_taxid
- id: in_custom
  doc: File containing list of sequence IDs
  type: File
  inputBinding:
    prefix: --custom
- id: in_custom_taxid
  doc: TaxID to assign to all sequence IDs in list
  type: long
  inputBinding:
    prefix: --custom_taxid
- id: in_custom_score
  doc: Score to assign to all sequence IDs in list
  type: double
  inputBinding:
    prefix: --custom_score
- id: in_general
  doc: -o, --out <PREFIX>                  Output prefix
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blobtools
- taxify
