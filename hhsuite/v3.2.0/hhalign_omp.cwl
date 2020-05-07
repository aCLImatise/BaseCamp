class: CommandLineTool
id: hhalign_omp.cwl
inputs:
- id: i
  doc: 'input/query: single sequence or multiple sequence alignment (MSA) in a3m,
    a2m, or FASTA format, or HMM in hhm format'
  type: File
  inputBinding:
    prefix: -i
- id: t
  doc: 'input/template: single sequence or multiple sequence alignment (MSA) in a3m,
    a2m, or FASTA format, or HMM in hhm format'
  type: File
  inputBinding:
    prefix: -t
- id: m
  doc: 'use FASTA: columns with residue in 1st sequence are match states'
  type: string
  inputBinding:
    prefix: -M
- id: m
  doc: '[0,100]     use FASTA: columns with fewer than X% gaps are match states   '
  type: boolean
  inputBinding:
    prefix: -M
- id: tags
  doc: '/-notags  do NOT / do neutralize His-, C-myc-, FLAG-tags, and trypsin  recognition
    sequence to background distribution (def=-notags)  '
  type: boolean
  inputBinding:
    prefix: -tags
- id: o
  doc: write results in standard format to file (default=<infile.hhr>)
  type: File
  inputBinding:
    prefix: -o
- id: oa3m
  doc: write query alignment in a3m or PSI-BLAST format (-opsi) to file (default=none)
  type: File
  inputBinding:
    prefix: -oa3m
- id: aa3m
  doc: append query alignment in a3m (-aa3m) or PSI-BLAST format (-apsi )to file (default=none)
  type: File
  inputBinding:
    prefix: -aa3m
- id: of_as
  doc: 'write pairwise alignments in FASTA xor A2M (-Oa2m) xor A3M (-Oa3m) format   '
  type: File
  inputBinding:
    prefix: -Ofas
- id: add_cons
  doc: generate consensus sequence as master sequence of query MSA (default=don't)
  type: boolean
  inputBinding:
    prefix: -add_cons
- id: hide_cons
  doc: "don't show consensus sequence in alignments (default=show)     "
  type: boolean
  inputBinding:
    prefix: -hide_cons
- id: hide_pred
  doc: don't show predicted 2ndary structure in alignments (default=show)
  type: boolean
  inputBinding:
    prefix: -hide_pred
- id: hide_dssp
  doc: "don't show DSSP 2ndary structure in alignments (default=show)  "
  type: boolean
  inputBinding:
    prefix: -hide_dssp
- id: show_ss_conf
  doc: show confidences for predicted 2ndary structure in alignments
  type: boolean
  inputBinding:
    prefix: -show_ssconf
- id: id
  doc: '[0,100]  maximum pairwise sequence identity (def=90)'
  type: boolean
  inputBinding:
    prefix: -id
- id: diff
  doc: '[0,inf[  filter MSAs by selecting most diverse set of sequences, keeping  at
    least this many seqs in each MSA block of length 50  Zero and non-numerical values
    turn off the filtering. (def=100) '
  type: boolean
  inputBinding:
    prefix: -diff
- id: cov
  doc: '[0,100]  minimum coverage with master sequence (%) (def=0)             '
  type: boolean
  inputBinding:
    prefix: -cov
- id: qid
  doc: '[0,100]  minimum sequence identity with master sequence (%) (def=0)    '
  type: boolean
  inputBinding:
    prefix: -qid
- id: qsc
  doc: '[0,100]  minimum score per column with master sequence (default=-20.0)    '
  type: boolean
  inputBinding:
    prefix: -qsc
- id: mark
  doc: 'do not filter out sequences marked by ">@"in their name line  '
  type: boolean
  inputBinding:
    prefix: -mark
- id: no_realign
  doc: 'do NOT realign displayed hits with MAC algorithm (def=realign)   '
  type: boolean
  inputBinding:
    prefix: -norealign
- id: mact
  doc: '[0,1[    posterior prob threshold for MAC realignment controlling greedi-  ness
    at alignment ends: 0:global >0.1:local (default=0.35)       '
  type: boolean
  inputBinding:
    prefix: -mact
- id: glob
  doc: /-loc     use global/local alignment mode for searching/ranking (def=local)
  type: boolean
  inputBinding:
    prefix: -glob
- id: v
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose (def=2)'
  type: long
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- hhalign_omp
