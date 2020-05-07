class: CommandLineTool
id: msslookup_makedecoy.cwl
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
- id: scramble
  doc: 'Decoy scrambling method, use: "reverse": reverse peptides fully, "tryp_rev":
    tryptic reverse, or "prot_rev": protein reverse.'
  type: string
  inputBinding:
    prefix: --scramble
- id: ignore_target_hits
  doc: Do not remove tryptic peptides from sequence where they match target DB
  type: boolean
  inputBinding:
    prefix: --ignore-target-hits
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
- id: min_len
  doc: Minimum length of peptide to be included
  type: long
  inputBinding:
    prefix: --minlen
- id: max_shuffle
  doc: Amount of times to attempt to shuffle a decoy reversed peptide to make it not
    match target peptides, before discarding it. Used when using tryptic peptide reversal
    (not protein reversal)
  type: long
  inputBinding:
    prefix: --maxshuffle
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- makedecoy
