class: CommandLineTool
id: msspercolator_filterseq.cwl
inputs:
- id: i
  doc: Input file of percolator out XML format
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
- id: in_source_frag
  doc: Apply filter against both intact peptides and those that match to the C-terminal
    part of a tryptic peptide from the database, resulting from in-source fragmentation,
    where some amino acids will be missing from the N-terminus. Specify the max number
    of amino acids that may be missing. Database should be built with this flag in
    order for the lookup to work, since sequences will be stored and looked up reversed
  type: string
  inputBinding:
    prefix: --insourcefrag
- id: de_ami_date
  doc: Filter against both normal peptides and deamidated peptides where a D->N transition
    has occurred.
  type: boolean
  inputBinding:
    prefix: --deamidate
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
outputs: []
cwlVersion: v1.1
baseCommand:
- msspercolator
- filterseq
