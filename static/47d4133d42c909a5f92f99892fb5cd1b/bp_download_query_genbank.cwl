class: CommandLineTool
id: bp_download_query_genbank.pl.cwl
inputs:
- id: query
  doc: string OR
  type: string
  inputBinding:
    prefix: --query
- id: query_file
  doc: file with query OR
  type: string
  inputBinding:
    prefix: --queryfile
- id: gi_file
  doc: with list of GIs to download
  type: File
  inputBinding:
    prefix: --gifile
- id: db
  doc: (nucleotide [default], nucest, protein, )
  type: string
  inputBinding:
    prefix: --db
- id: outfile
  doc: file (results are displayed on screen otherwise)
  type: string
  inputBinding:
    prefix: --outfile
- id: format
  doc: file output format (fasta by default)
  type: string
  inputBinding:
    prefix: --format
- id: verbose
  doc: output
  type: string
  inputBinding:
    prefix: --verbose
- id: max_ids
  doc: number of IDs to retrieve in a set (100 at a time by default)
  type: long
  inputBinding:
    prefix: --maxids
- id: rel_date
  doc: for a record
  type: long
  inputBinding:
    prefix: --reldate
- id: min_date
  doc: date for record
  type: long
  inputBinding:
    prefix: --mindate
- id: date_type
  doc: or mdat (entered or modified)
  type: string
  inputBinding:
    prefix: --datetype
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_download_query_genbank.pl
