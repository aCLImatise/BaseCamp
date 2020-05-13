class: CommandLineTool
id: msspsmtable_proteingroup.cwl
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
- id: unroll
  doc: PSM table from Mzid2TSV contains either one PSM per line with all the proteins
    of that shared peptide on the same line (not unrolled, default), or one PSM/protein
    match per line where each protein from that shared peptide gets its own line (unrolled).
  type: boolean
  inputBinding:
    prefix: --unroll
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- proteingroup
