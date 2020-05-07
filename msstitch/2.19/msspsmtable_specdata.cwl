class: CommandLineTool
id: msspsmtable_specdata.cwl
inputs:
- id: i
  doc: Input file of TSV PSM table (MSGF+) format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: spectra_col
  doc: Column number in which spectra file names are, in case some framework has changed
    the file names. First column number is 1.
  type: string
  inputBinding:
    prefix: --spectracol
- id: add_bio_set
  doc: Add biological setname from DB lookup to PSM table
  type: boolean
  inputBinding:
    prefix: --addbioset
- id: add_misc_leav
  doc: Add missed cleavages to PSM table
  type: boolean
  inputBinding:
    prefix: --addmiscleav
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- specdata
