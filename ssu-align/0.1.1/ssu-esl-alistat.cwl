#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-alistat
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-alistat
inputs:
- doc: ''
  id: msa_file
  inputBinding:
    position: 0
  type: string
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
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
- doc: ': use minimal RAM (RAM usage will be independent of aln size)'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
- doc: ': output list of sequence names in alignment(s) to file <f>'
  id: list
  inputBinding:
    prefix: --list
  type: string
- doc: ': print info on information content alignment column'
  id: ic_info
  inputBinding:
    prefix: --icinfo
  type: string
- doc: ': print info on # of non-gap residues in each column to <f>'
  id: r_info
  inputBinding:
    prefix: --rinfo
  type: string
- doc: ': print per-column   posterior probability info to <f>'
  id: pc_info
  inputBinding:
    prefix: --pcinfo
  type: string
- doc: ': print per-sequence posterior probability info to <f>'
  id: ps_info
  inputBinding:
    prefix: --psinfo
  type: string
- doc: ': print info on # of insertions b/t all non-gap RF cols to <f>'
  id: i_info
  inputBinding:
    prefix: --iinfo
  type: string
