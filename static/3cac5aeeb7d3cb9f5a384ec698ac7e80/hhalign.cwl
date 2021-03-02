class: CommandLineTool
id: hhalign.cwl
inputs:
- id: in_inputquery_single_sequence
  doc: "input/query: single sequence or multiple sequence alignment (MSA)\nin a3m,\
    \ a2m, or FASTA format, or HMM in hhm format"
  type: File?
  inputBinding:
    prefix: -i
- id: in_inputtemplate_single_sequence
  doc: "input/template: single sequence or multiple sequence alignment (MSA)\nin a3m,\
    \ a2m, or FASTA format, or HMM in hhm format"
  type: File?
  inputBinding:
    prefix: -t
- id: in_no_tags
  doc: "do NOT / do neutralize His-, C-myc-, FLAG-tags, and trypsin\nrecognition sequence\
    \ to background distribution (def=-notags)"
  type: boolean?
  inputBinding:
    prefix: -notags
- id: in_write_results_file
  doc: write results in standard format to file (default=<infile.hhr>)
  type: File?
  inputBinding:
    prefix: -o
- id: in_o_a_three_m
  doc: write query alignment in a3m or PSI-BLAST format (-opsi) to file (default=none)
  type: File?
  inputBinding:
    prefix: -oa3m
- id: in_aa_three_m
  doc: append query alignment in a3m (-aa3m) or PSI-BLAST format (-apsi )to file (default=none)
  type: File?
  inputBinding:
    prefix: -aa3m
- id: in_of_as
  doc: write pairwise alignments in FASTA xor A2M (-Oa2m) xor A3M (-Oa3m) format
  type: File?
  inputBinding:
    prefix: -Ofas
- id: in_add_cons
  doc: generate consensus sequence as master sequence of query MSA (default=don't)
  type: boolean?
  inputBinding:
    prefix: -add_cons
- id: in_hide_cons
  doc: don't show consensus sequence in alignments (default=show)
  type: boolean?
  inputBinding:
    prefix: -hide_cons
- id: in_hide_pred
  doc: don't show predicted 2ndary structure in alignments (default=show)
  type: boolean?
  inputBinding:
    prefix: -hide_pred
- id: in_hide_dssp
  doc: don't show DSSP 2ndary structure in alignments (default=show)
  type: boolean?
  inputBinding:
    prefix: -hide_dssp
- id: in_show_ss_conf
  doc: show confidences for predicted 2ndary structure in alignments
  type: boolean?
  inputBinding:
    prefix: -show_ssconf
- id: in_id
  doc: '[0,100]  maximum pairwise sequence identity (def=90)'
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_diff
  doc: "[0,inf[  filter MSAs by selecting most diverse set of sequences, keeping\n\
    at least this many seqs in each MSA block of length 50\nZero and non-numerical\
    \ values turn off the filtering. (def=100)"
  type: boolean?
  inputBinding:
    prefix: -diff
- id: in_cov
  doc: '[0,100]  minimum coverage with master sequence (%) (def=0)'
  type: boolean?
  inputBinding:
    prefix: -cov
- id: in_qid
  doc: '[0,100]  minimum sequence identity with master sequence (%) (def=0)'
  type: boolean?
  inputBinding:
    prefix: -qid
- id: in_qsc
  doc: '[0,100]  minimum score per column with master sequence (default=-20.0)'
  type: boolean?
  inputBinding:
    prefix: -qsc
- id: in_mark
  doc: do not filter out sequences marked by ">@"in their name line
  type: boolean?
  inputBinding:
    prefix: -mark
- id: in_no_realign
  doc: do NOT realign displayed hits with MAC algorithm (def=realign)
  type: boolean?
  inputBinding:
    prefix: -norealign
- id: in_mact
  doc: "[0,1[    posterior prob threshold for MAC realignment controlling greedi-\n\
    ness at alignment ends: 0:global >0.1:local (default=0.35)"
  type: boolean?
  inputBinding:
    prefix: -mact
- id: in_glob
  doc: use global/local alignment mode for searching/ranking (def=local)
  type: boolean?
  inputBinding:
    prefix: -glob
- id: in_verbose_mode_screen
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose (def=2)'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hhalign
