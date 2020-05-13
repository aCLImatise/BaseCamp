class: CommandLineTool
id: ssu_esl_alimerge.cwl
inputs:
- id: o
  doc: ': output the final alignment to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: ': print info on merge to stdout; requires -o'
  type: boolean
  inputBinding:
    prefix: -v
- id: small
  doc: ': use minimal RAM (RAM usage will be independent of aln sizes)'
  type: boolean
  inputBinding:
    prefix: --small
- id: rf_only
  doc: ': remove all columns that are gaps in GC RF annotation'
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: out_format
  doc: ': specify that output aln be format <s> (see choices above)'
  type: string
  inputBinding:
    prefix: --outformat
- id: rna
  doc: ': alignments to merge are RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': alignments to merge are DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: amino
  doc: ': alignments to merge are protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-alimerge
