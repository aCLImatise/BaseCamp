#!/usr/bin/env cwl-runner

baseCommand:
- oases
class: CommandLineTool
cwlVersion: v1.0
id: oases
inputs:
- doc: ': working directory name'
  id: directory
  inputBinding:
    position: 0
  type: Directory
- doc: '<yes|no>          : export unused reads in UnusedReads.fa file (default: no)'
  id: unused_reads
  inputBinding:
    prefix: -unused_reads
  type: boolean
- doc: '<yes|no>             : export assembly to AMOS file (default: no export)'
  id: amos_file
  inputBinding:
    prefix: -amos_file
  type: boolean
- doc: '<yes|no>            : export a summary of contig alignment to the reference
    sequences (default: no)'
  id: alignments
  inputBinding:
    prefix: -alignments
  type: boolean
- doc: '<yes|no>           : Allow gaps in transcripts (default: no)'
  id: scaffolding
  inputBinding:
    prefix: -scaffolding
  type: boolean
- doc: ": Maximum allowed degree on either end of a contigg to consider it 'unique'\
    \ (default: 3)"
  id: degree_cut_off
  inputBinding:
    prefix: -degree_cutoff
  type: long
