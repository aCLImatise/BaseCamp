class: CommandLineTool
id: msslookup_trypsinize.cwl
inputs:
- id: i
  doc: Input file of {} format
  type: string
  inputBinding:
    prefix: -i
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: misc_leav
  doc: Amount of missed cleavages to allow when trypsinizing
  type: string
  inputBinding:
    prefix: --miscleav
- id: min_len
  doc: Minimum length of peptide to be included
  type: long
  inputBinding:
    prefix: --minlen
- id: cut_proline
  doc: Flag to make trypsin before a proline residue. Then filtering will be done
    against both cut and non-cut peptides.
  type: boolean
  inputBinding:
    prefix: --cutproline
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- trypsinize
