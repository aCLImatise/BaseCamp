#!/usr/bin/env cwl-runner

baseCommand:
- EDTA_raw.pl
class: CommandLineTool
cwlVersion: v1.0
id: edta_raw.pl
inputs:
- doc: '[File]  The genome FASTA'
  id: genome
  inputBinding:
    prefix: --genome
  type: boolean
- doc: '[rice|maize|others]   Specify the species for identification of TIR candidates.
    Default: others'
  id: species
  inputBinding:
    prefix: --species
  type: boolean
- doc: '[ltr|tir|helitron|all]  Specify which type of raw TE candidates you want to
    get. Default: all'
  id: type
  inputBinding:
    prefix: --type
  type: boolean
- doc: '[0|1]   If previous results are found, decide to overwrite (1, rerun) or not
    (0, default).'
  id: overwrite
  inputBinding:
    prefix: --overwrite
  type: boolean
- doc: '[0|1]   Convert long sequence name to <= 15 characters and remove annotations
    (1, default) or use the original (0)'
  id: convert_seq_name
  inputBinding:
    prefix: --convert_seq_name
  type: boolean
- doc: '[int]   Number of theads to run this script. Default: 4'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
