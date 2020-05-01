#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge-download
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge-download
inputs:
- doc: or genbank for genomic sequences,
  id: use
  inputBinding:
    prefix: '- use'
  type: string
- doc: contaminant sequences from UniVec and EmVec,
  id: contaminants
  inputBinding:
    prefix: '- contaminants'
  type: string
- doc: taxonomy mappings.
  id: taxonomy
  inputBinding:
    prefix: '- taxonomy'
  type: string
- doc: "Folder to which the files are downloaded. Default: '.'."
  id: o
  inputBinding:
    prefix: -o
  type: Directory
- doc: "<# of threads>      Number of processes when downloading (uses xargs). Default:\
    \ '1'"
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: What domain to download. One or more of bacteria, viral, archaea, fungi, protozoa,
    invertebrate, plant, vertebrate_mammalian, vertebrate_other (comma separated).
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: "Only download genomes with the specified assembly level. Default: 'Complete\
    \ Genome'. Use 'Any' for any assembly level."
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: 'Only download genomes in the specified refseq category. Default: any.'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: 'Only download the specified taxonomy IDs, comma separated. Default: any.'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: 'Download using program. Options: rsync, curl, wget. Default curl (auto-detected).'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Download RNA sequences, too.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Filter unplaced sequences.
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: 'Mask low-complexity regions using dustmasker. Default: off.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: 'Modify header to include taxonomy ID. Default: off.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Download GI map.
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: Verbose mode
  id: v
  inputBinding:
    prefix: -v
  type: boolean
