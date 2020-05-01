#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-compalign
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-compalign
inputs:
- doc: ': print per column statistics instead of per sequence stats'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': print stats on accuracy versus posterior probability (PP)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ": with -p, only consider columns within mask ('1' columns) in <f>"
  id: p_mask
  inputBinding:
    prefix: --p-mask
  type: string
- doc: ': print per column stats to esl-ssdraw --dfile file <f>'
  id: c2d_file
  inputBinding:
    prefix: --c2dfile
  type: string
- doc: ': <msafile> contains protein alignments'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': <msafile> contains DNA alignments'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': <msafile> contains RNA alignments'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
