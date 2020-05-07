class: CommandLineTool
id: deblur_deblur_seqs.cwl
inputs:
- id: mean_error
  doc: 'The mean per nucleotide error, used for original sequence estimate. If not
    passed typical illumina error rate is used  [default: 0.005]'
  type: double
  inputBinding:
    prefix: --mean-error
- id: error_dist
  doc: 'A comma separated list of error probabilities for each hamming distance. The
    length of the list determines the number of hamming distances taken into account.  [default:
    1, 0.06, 0.02, 0.02, 0.01, 0.005, 0.005, 0.005, 0.001, 0.001, 0.001, 0.0005]'
  type: string
  inputBinding:
    prefix: --error-dist
- id: in_del_prob
  doc: Insertion/deletion (indel) probability (same for N indels)
  type: double
  inputBinding:
    prefix: --indel-prob
- id: in_del_max
  doc: Maximal indel number
  type: long
  inputBinding:
    prefix: --indel-max
- id: log_level
  doc: 'RANGE  Level of messages for log file(range 1-debug to 5-critical  [default:
    2]'
  type: long
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- deblur-seqs
