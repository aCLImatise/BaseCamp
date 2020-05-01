#!/usr/bin/env cwl-runner

baseCommand:
- esl-alimap
class: CommandLineTool
cwlVersion: v1.0
id: esl-alimap
inputs:
- doc: ": be quiet, don't print mapping of each column"
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ": mask to <f>:'1'=msa1 aln       col x maps msa2 aln col"
  id: mask_a2a
  inputBinding:
    prefix: --mask-a2a
  type: string
- doc: ": mask to <f>:'1'=msa1 aln       col x maps msa2 nongap RF col"
  id: mask_a2rf
  inputBinding:
    prefix: --mask-a2rf
  type: string
- doc: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 aln col"
  id: mask_rf2a
  inputBinding:
    prefix: --mask-rf2a
  type: string
- doc: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 nongap RF col"
  id: mask_rf2rf
  inputBinding:
    prefix: --mask-rf2rf
  type: string
- doc: ': <msafile2> is subaln of <msafile1>, output mask to <f>'
  id: submap
  inputBinding:
    prefix: --submap
  type: string
- doc: ': <msafile{1,2}> contain protein alignments'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': <msafile{1,2}> contain DNA alignments'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': <msafile{1,2}> contain RNA alignments'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
