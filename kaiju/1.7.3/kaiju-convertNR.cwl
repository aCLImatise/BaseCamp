#!/usr/bin/env cwl-runner

baseCommand:
- kaiju-convertNR
class: CommandLineTool
cwlVersion: v1.0
id: kaiju-convertnr
inputs:
- doc: Name of nodes.dmp file.
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: Name of prot.accession2taxid file.
  id: g
  inputBinding:
    prefix: -g
  type: File
- doc: Name of output file.
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: Prefix taxon ID in database names with the first accession number per record.
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Name of NR file. If this option is not used, then the program will read from
    STDIN.
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Name of file with taxon IDs. Only records having one of these IDs as ancestor
    in the taxonomy will be used.
  id: l
  inputBinding:
    prefix: -l
  type: File
- doc: Name of file with accession numbers that will be excluded.
  id: e
  inputBinding:
    prefix: -e
  type: File
