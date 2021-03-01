class: CommandLineTool
id: bp_download_query_genbank.pl.cwl
inputs:
- id: in_query
  doc: string OR
  type: string?
  inputBinding:
    prefix: --query
- id: in_query_file
  doc: file with query OR
  type: File?
  inputBinding:
    prefix: --queryfile
- id: in_gi_file
  doc: with list of GIs to download
  type: File?
  inputBinding:
    prefix: --gifile
- id: in_db
  doc: (nucleotide [default], nucest, protein, )
  type: string?
  inputBinding:
    prefix: --db
- id: in_outfile
  doc: file (results are displayed on screen otherwise)
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_format
  doc: file output format (fasta by default)
  type: File?
  inputBinding:
    prefix: --format
- id: in_verbose
  doc: output
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_max_ids
  doc: number of IDs to retrieve in a set (100 at a time by default)
  type: long?
  inputBinding:
    prefix: --maxids
- id: in_rel_date
  doc: for a record
  type: string?
  inputBinding:
    prefix: --reldate
- id: in_min_date
  doc: date for record
  type: string?
  inputBinding:
    prefix: --mindate
- id: in_date_type
  doc: or mdat (entered or modified)
  type: string?
  inputBinding:
    prefix: --datetype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: file output format (fasta by default)
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_download_query_genbank.pl
