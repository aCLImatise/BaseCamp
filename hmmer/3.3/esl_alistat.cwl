class: CommandLineTool
id: esl_alistat.cwl
inputs:
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: amino
  doc: ': <msafile> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: small
  doc: ': use minimal RAM (RAM usage will be independent of aln size)'
  type: boolean
  inputBinding:
    prefix: --small
- id: list
  doc: ': output list of sequence names in alignment(s) to file <f>'
  type: string
  inputBinding:
    prefix: --list
- id: ic_info
  doc: ': print info on information content alignment column'
  type: string
  inputBinding:
    prefix: --icinfo
- id: r_info
  doc: ': print info on # of non-gap residues in each column to <f>'
  type: string
  inputBinding:
    prefix: --rinfo
- id: pc_info
  doc: ': print per-column   posterior probability info to <f>'
  type: string
  inputBinding:
    prefix: --pcinfo
- id: ps_info
  doc: ': print per-sequence posterior probability info to <f>'
  type: string
  inputBinding:
    prefix: --psinfo
- id: i_info
  doc: ': print info on # of insertions b/t all non-gap RF cols to <f>'
  type: string
  inputBinding:
    prefix: --iinfo
- id: c_info
  doc: ': print per-column residue counts to <f>'
  type: string
  inputBinding:
    prefix: --cinfo
- id: noam_big
  doc: ': with --cinfo, do not count ambiguous residues'
  type: boolean
  inputBinding:
    prefix: --noambig
- id: bp_info
  doc: ': print per-column base-pair counts to <f>'
  type: string
  inputBinding:
    prefix: --bpinfo
- id: weight
  doc: ': with --*info files, weight counts using WT annotation from msa'
  type: boolean
  inputBinding:
    prefix: --weight
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alistat
