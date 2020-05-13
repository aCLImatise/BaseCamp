class: CommandLineTool
id: PLEKModelling.py.cwl
inputs:
- id: minlength
  doc: 0_or_1 -isrmtempfile 0_or_1
  type: string
  inputBinding:
    prefix: -minlength
- id: is_balanced
  doc: '0_or_1 '
  type: string
  inputBinding:
    prefix: -isbalanced
- id: mrna
  doc: mRNA transcripts used to build predictor, in fasta format.
  type: boolean
  inputBinding:
    prefix: -mRNA
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
- id: log2c
  doc: '(Optional) The specified range of C parameter for the svm parameter  search.
    Default value: 0,5,1. (from, to, by; 0,1,2,3,4,5)   '
  type: boolean
  inputBinding:
    prefix: -log2c
- id: log2g
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
- id: k
  doc: '(Optional) range of k. k=5 means that we will calculate usage of  1364 k-mer
    patterns. (k=1, 4 patterns; k=2, 16; k=3, 64; k=4, 256;  k=5, 1024; 1364=4+64+256+1024).
    Default value: 5. '
  type: boolean
  inputBinding:
    prefix: -k
- id: n_fold
  doc: '(Optional) n-fold cross-validation in search for optimal parameters. Default
    value: 10.   '
  type: boolean
  inputBinding:
    prefix: -nfold
- id: is_balanced
  doc: '(Optional) In the case of isbalanced=1, if the samples are  unbalanced, it
    will subsample the overrepresented class to obtain an  equal amount of positives
    and negatives. Default value: 0.'
  type: boolean
  inputBinding:
    prefix: -isbalanced
- id: range
  doc: '20140531.range -model 20140531.model '
  type: boolean
  inputBinding:
    prefix: -range
- id: log2c
  doc: '1,3,1 -log2g -1,-3,-1 -nfold 2 -k 4      '
  type: boolean
  inputBinding:
    prefix: -log2c
- id: range
  doc: 20140601.range -model 20140601.model -k 4
  type: boolean
  inputBinding:
    prefix: -range
outputs: []
cwlVersion: v1.1
baseCommand:
- PLEKModelling.py
