class: CommandLineTool
id: msp2db.cwl
inputs:
- id: msp_pth
  doc: Path to the MSP file (or directory of msp files)
  type: string
  inputBinding:
    prefix: --msp_pth
- id: source
  doc: Name of data source (e.g. MassBank, LipidBlast)
  type: string
  inputBinding:
    prefix: --source
- id: out_pth
  doc: File path for SQLite database
  type: string
  inputBinding:
    prefix: --out_pth
- id: db_type
  doc: Database type [mysql, sqlite]
  type: string
  inputBinding:
    prefix: --db_type
- id: delete_tables
  doc: Delete tables
  type: boolean
  inputBinding:
    prefix: --delete_tables
- id: ms_level
  doc: MS level of fragmentation if not detailed in msp file
  type: string
  inputBinding:
    prefix: --mslevel
- id: polarity
  doc: Polarity of fragmentation if not detailed in msp file
  type: string
  inputBinding:
    prefix: --polarity
- id: chunk
  doc: Chunks of spectra to parse data (useful to control memory usage)
  type: string
  inputBinding:
    prefix: --chunk
- id: schema
  doc: Type of schema used (by default is "mona" msp style but can use "massbank"
    style
  type: string
  inputBinding:
    prefix: --schema
- id: ignore_compound_lookup
  doc: ignore searching of compounds for each spectra based on meta information in
    the MSP file
  type: boolean
  inputBinding:
    prefix: --ignore_compound_lookup
outputs: []
cwlVersion: v1.1
baseCommand:
- msp2db
