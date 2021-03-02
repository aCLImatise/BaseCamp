class: CommandLineTool
id: msp2db.cwl
inputs:
- id: in_msp_pth
  doc: Path to the MSP file (or directory of msp files)
  type: File?
  inputBinding:
    prefix: --msp_pth
- id: in_source
  doc: Name of data source (e.g. MassBank, LipidBlast)
  type: string?
  inputBinding:
    prefix: --source
- id: in_out_pth
  doc: File path for SQLite database
  type: File?
  inputBinding:
    prefix: --out_pth
- id: in_db_type
  doc: Database type [mysql, sqlite]
  type: string?
  inputBinding:
    prefix: --db_type
- id: in_delete_tables
  doc: Delete tables
  type: boolean?
  inputBinding:
    prefix: --delete_tables
- id: in_ms_level
  doc: MS level of fragmentation if not detailed in msp file
  type: File?
  inputBinding:
    prefix: --mslevel
- id: in_polarity
  doc: Polarity of fragmentation if not detailed in msp file
  type: File?
  inputBinding:
    prefix: --polarity
- id: in_chunk
  doc: "Chunks of spectra to parse data (useful to control\nmemory usage)"
  type: string?
  inputBinding:
    prefix: --chunk
- id: in_schema
  doc: "Type of schema used (by default is \"mona\" msp style\nbut can use \"massbank\"\
    \ style"
  type: string?
  inputBinding:
    prefix: --schema
- id: in_ignore_compound_lookup
  doc: "ignore searching of compounds for each spectra based\non meta information\
    \ in the MSP file"
  type: boolean?
  inputBinding:
    prefix: --ignore_compound_lookup
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- msp2db
