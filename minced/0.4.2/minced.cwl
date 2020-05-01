#!/usr/bin/env cwl-runner

baseCommand:
- minced
class: CommandLineTool
cwlVersion: v1.0
id: minced
inputs:
- doc: ''
  id: file_fa
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: output_file_txt
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_file_gff
  inputBinding:
    position: 2
  type: string
- doc: 'Length of search window used to discover CRISPRs (range: 6-9). Default: 8'
  id: search_wl
  inputBinding:
    prefix: -searchWL
  type: boolean
- doc: 'Minimum number of repeats a CRISPR must contain. Default: 3'
  id: min_nr
  inputBinding:
    prefix: -minNR
  type: boolean
- doc: 'Minimum length of the CRISPR repeats. Default: 23'
  id: min_rl
  inputBinding:
    prefix: -minRL
  type: boolean
- doc: 'Maximum length of the CRISPR repeats. Default: 47'
  id: max_rl
  inputBinding:
    prefix: -maxRL
  type: boolean
- doc: 'Minimum length of the CRISPR spacers. Default: 26'
  id: mins_l
  inputBinding:
    prefix: -minSL
  type: boolean
- doc: 'Maximum length of the CRISPR spacers. Default: 50'
  id: max_sl
  inputBinding:
    prefix: -maxSL
  type: boolean
- doc: 'Output summary results in gff format containing only the positions of the
    CRISPR arrays. Default: false'
  id: gff
  inputBinding:
    prefix: -gff
  type: boolean
- doc: 'Output detailed results in gff format containing positions of CRISPR arrays
    and all repeat units. Default: false'
  id: gff_full
  inputBinding:
    prefix: -gffFull
  type: boolean
- doc: 'Output a fasta formatted file containing the spacers. Default: false'
  id: spacers
  inputBinding:
    prefix: -spacers
  type: boolean
