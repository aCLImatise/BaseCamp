class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msstitch_filterperco.cwl
inputs:
- id: input_file_format
  doc: Input file of {} format
  type: string
  inputBinding:
    prefix: -i
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: full_protein
  doc: Store full protein sequences (at a minimum-match length) in the SQLite file
    rather than tryptic sequences
  type: boolean
  inputBinding:
    prefix: --fullprotein
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
- id: in_source_frag
  doc: Apply filter against both intact peptides and those that match to the C-terminal
    part of a tryptic peptide from the database, resulting from in-source fragmentation,
    where some amino acids will be missing from the N-terminus. Specify the max number
    of amino acids that may be missing. Database should be built with this flag in
    order for the lookup to work, since sequences will be stored and looked up reversed
  type: string
  inputBinding:
    prefix: --insourcefrag
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- filterperco
