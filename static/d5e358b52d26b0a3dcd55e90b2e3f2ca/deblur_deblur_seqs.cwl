class: CommandLineTool
id: deblur_deblur_seqs.cwl
inputs:
- id: in_mean_error
  doc: "The mean per nucleotide error, used for original\nsequence estimate. If not\
    \ passed typical illumina\nerror rate is used  [default: 0.005]"
  type: double?
  inputBinding:
    prefix: --mean-error
- id: in_error_dist
  doc: "A comma separated list of error probabilities for\neach hamming distance.\
    \ The length of the list\ndetermines the number of hamming distances taken\ninto\
    \ account.  [default: 1, 0.06, 0.02, 0.02,\n0.01, 0.005, 0.005, 0.005, 0.001,\
    \ 0.001, 0.001,\n0.0005]"
  type: long?
  inputBinding:
    prefix: --error-dist
- id: in_in_del_prob
  doc: "Insertion/deletion (indel) probability (same for\nN indels)"
  type: double?
  inputBinding:
    prefix: --indel-prob
- id: in_in_del_max
  doc: Maximal indel number
  type: long?
  inputBinding:
    prefix: --indel-max
- id: in_log_level
  doc: RANGE  Level of messages for log file(range 1-debug to
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: 'log file name  [default: deblur.log]'
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_seqs_fp
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- deblur
- deblur-seqs
