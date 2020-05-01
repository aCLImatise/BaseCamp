#!/usr/bin/env cwl-runner

baseCommand:
- combineGO.pl
class: CommandLineTool
cwlVersion: v1.0
id: combinego.pl
inputs:
- doc: (Filename to join enrichment values from)
  id: f
  inputBinding:
    prefix: -f
  type: File
- doc: '[directory2] ... (findMotifs.pl output directories to join)'
  id: d
  inputBinding:
    prefix: -d
  type: Directory
- doc: '<#> (Only keep top # terms per directory, default: keep all)'
  id: top
  inputBinding:
    prefix: -top
  type: boolean
- doc: '<#> (Column in files to join, default: 4)'
  id: column
  inputBinding:
    prefix: -column
  type: boolean
- doc: '(return log2 ratio target/background if using motifs/knownResults.txt) -pseudoFraction
    <#> (Default: 2%)'
  id: ratio
  inputBinding:
    prefix: -ratio
  type: boolean
