class: CommandLineTool
id: cgwDump.cwl
inputs:
- id: g
  doc: mandatory path to the gkpStore
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: version     mandatory path to the tigStore and version
  type: string
  inputBinding:
    prefix: -t
- id: c
  doc: version   mandatory path to a checkpoint and version
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: output is written to files starting with 'prefix' (e.g., prefix.ctg.fasta)
    (e.g., prefix.posmap.frgscf)
  type: string
  inputBinding:
    prefix: -o
- id: all
  doc: dump all data for all object types
  type: boolean
  inputBinding:
    prefix: -all
- id: reads
  doc: dumps reads
  type: boolean
  inputBinding:
    prefix: -reads
- id: unit_igs
  doc: dumps unitigs
  type: boolean
  inputBinding:
    prefix: -unitigs
- id: contigs
  doc: dumps contigs
  type: boolean
  inputBinding:
    prefix: -contigs
- id: scaffolds
  doc: dumps scaffolds
  type: boolean
  inputBinding:
    prefix: -scaffolds
- id: i
  doc: dumps a specific object (multiple -i allowed)
  type: string
  inputBinding:
    prefix: -i
- id: consensus
  doc: dumps consensus sequence
  type: boolean
  inputBinding:
    prefix: -consensus
- id: layout
  doc: dumps posmap layout of component objects
  type: boolean
  inputBinding:
    prefix: -layout
- id: edges
  doc: dumps unused mate edges involving selected objects
  type: boolean
  inputBinding:
    prefix: -edges
- id: label_tig_s
  doc: assign labels to unitigs/contigs
  type: boolean
  inputBinding:
    prefix: -labeltigs
- id: label_reads
  doc: assign labels to mate pairs
  type: boolean
  inputBinding:
    prefix: -labelreads
outputs: []
cwlVersion: v1.1
baseCommand:
- cgwDump
