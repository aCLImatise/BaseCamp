class: CommandLineTool
id: msspercolator_filterprot.cwl
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
- id: de_ami_date
  doc: Filter against both normal peptides and deamidated peptides where a D->N transition
    has occurred.
  type: boolean
  inputBinding:
    prefix: --deamidate
- id: fast_a
  doc: FASTA sequence database
  type: string
  inputBinding:
    prefix: --fasta
- id: min_len
  doc: Minimum length of peptide to be included
  type: long
  inputBinding:
    prefix: --minlen
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: enforce_tryptic
  doc: When filtering peptides against whole proteins, filter out peptides that match
    a whole protein but only if they are fully tryptic, i.e. the protein needs K,R
    1 position upstream of the peptide, and the peptide C-terminal should also be
    K,R. Useful when discerning from pseudogenes
  type: boolean
  inputBinding:
    prefix: --enforce-tryptic
outputs: []
cwlVersion: v1.1
baseCommand:
- msspercolator
- filterprot
