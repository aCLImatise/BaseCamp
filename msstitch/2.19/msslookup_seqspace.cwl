class: CommandLineTool
id: msslookup_seqspace.cwl
inputs:
- id: i
  doc: Input file of FASTA format
  type: string
  inputBinding:
    prefix: -i
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: in_source_frag
  doc: Apply filter against both intact peptides and those that match to the C-terminal
    part of a tryptic peptide from the database, resulting from in-source fragmentation,
    where some amino acids will be missing from the N-terminus. Specify the max number
    of amino acids that may be missing. Database should be built with this flag in
    order for the lookup to work, since sequences will be stored and looked up reversed
  type: boolean
  inputBinding:
    prefix: --insourcefrag
- id: cut_proline
  doc: Flag to make trypsin before a proline residue. Then filtering will be done
    against both cut and non-cut peptides.
  type: boolean
  inputBinding:
    prefix: --cutproline
- id: min_len
  doc: Minimum length of peptide to be included
  type: long
  inputBinding:
    prefix: --minlen
- id: no_trypsin
  doc: Do not trypsinize. User is expected to deliver apretrypsinized FASTA file
  type: boolean
  inputBinding:
    prefix: --notrypsin
- id: misc_leav
  doc: Amount of missed cleavages to allow when trypsinizing
  type: string
  inputBinding:
    prefix: --miscleav
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- seqspace
