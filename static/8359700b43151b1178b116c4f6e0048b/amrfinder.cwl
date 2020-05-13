class: CommandLineTool
id: amrfinder.pl.cwl
inputs:
- id: h
  doc: help text
  type: string
  inputBinding:
    prefix: -h
- id: v
  doc: 'version information '
  type: string
  inputBinding:
    prefix: -v
- id: u
  doc: AMRFinder database
  type: string
  inputBinding:
    prefix: -U
- id: d
  doc: Directory containing the AMR database
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: tabfile output to this file instead of STDOUT
  type: File
  inputBinding:
    prefix: -o
- id: q
  doc: mode (don't print status messages to STDERR)
  type: string
  inputBinding:
    prefix: -q
- id: p
  doc: Amino-acid sequences to search using BLASTP and HMMER
  type: string
  inputBinding:
    prefix: -p
- id: g
  doc: GFF file indicating genomic location for proteins in -p <protein>
  type: string
  inputBinding:
    prefix: -g
- id: n
  doc: genomic sequence to search using BLASTX
  type: string
  inputBinding:
    prefix: -n
- id: i
  doc: <0.9> Minimum proportion identical translated AA residues
  type: boolean
  inputBinding:
    prefix: -i
- id: c
  doc: <0.5> Minimum coverage of reference protein sequence
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: <11> Translation table for blastx
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- amrfinder.pl
