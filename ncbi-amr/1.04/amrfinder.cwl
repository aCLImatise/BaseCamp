#!/usr/bin/env cwl-runner

baseCommand:
- amrfinder.pl
class: CommandLineTool
cwlVersion: v1.0
id: amrfinder.pl
inputs:
- doc: help text
  id: h
  inputBinding:
    prefix: -h
  type: string
- doc: 'version information '
  id: v
  inputBinding:
    prefix: -v
  type: string
- doc: AMRFinder database
  id: u
  inputBinding:
    prefix: -U
  type: string
- doc: Directory containing the AMR database
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: tabfile output to this file instead of STDOUT
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: mode (don't print status messages to STDERR)
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: Amino-acid sequences to search using BLASTP and HMMER
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: GFF file indicating genomic location for proteins in -p <protein>
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: genomic sequence to search using BLASTX
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: <0.9> Minimum proportion identical translated AA residues
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: <0.5> Minimum coverage of reference protein sequence
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: <11> Translation table for blastx
  id: t
  inputBinding:
    prefix: -t
  type: boolean
