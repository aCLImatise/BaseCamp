class: CommandLineTool
id: ../../../PLEKModelling.py.cwl
inputs:
- id: is_balanced
  doc: mRNA transcripts used to build predictor, in fasta format.
  type: string
  inputBinding:
    prefix: -isbalanced
- id: l_ncrna
  doc: lncRNA transcripts used to build predictor, in fasta format.
  type: boolean
  inputBinding:
    prefix: -lncRNA
- id: prefix
  doc: Prefix of the output files.
  type: boolean
  inputBinding:
    prefix: -prefix
- id: log_two_c
  doc: '(Optional) The specified range of C parameter for the svm parameter  search.
    Default value: 0,5,1. (from, to, by; 0,1,2,3,4,5)   '
  type: boolean
  inputBinding:
    prefix: -log2c
- id: log_two_g
  doc: '(Optional) The specified range of G parameter for the svm parameter  search.
    Default value: 0,-5,-1.(from, to, by; 0,-1,-2,-3,-4,-5) '
  type: boolean
  inputBinding:
    prefix: -log2g
- id: thread
  doc: '(Optional) The number of threads for running the PLEKModelling  program. The
    bigger this number is, the faster PLEKModelling runs. Note that a larger thread
    number means larger consumption of memory. Default value: 12.'
  type: boolean
  inputBinding:
    prefix: -thread
- id: model
  doc: '(Optional) The name of a predictor model file (an output file by PLEKModelling.py).   '
  type: boolean
  inputBinding:
    prefix: -model
- id: range
  doc: '(Optional) The name of a svm range file (an output file by  PLEKModelling.py).   '
  type: boolean
  inputBinding:
    prefix: -range
- id: minlength
  doc: '(Optional) The minimum length of sequences. The sequences whose  lengths are
    more than minlength will be processed. Default  value: 200.             '
  type: boolean
  inputBinding:
    prefix: -minlength
- id: is_out_msg
  doc: '(Optional) Output messages to stdout(screen) or not. "0" means  that PLEKModelling
    be run quietly. "1" means that PLEKModelling  outputs the details of processing.
    Default value: 0.   '
  type: boolean
  inputBinding:
    prefix: -isoutmsg
- id: is_rm_tempfile
  doc: '(Optional) Remove temporary files or not. "0" means that PLEKModelling  retains
    temporary files. "1" means that PLEKModelling remove temporary  files. Default
    value: 1.'
  type: boolean
  inputBinding:
    prefix: -isrmtempfile
outputs: []
cwlVersion: v1.1
baseCommand:
- PLEKModelling.py
