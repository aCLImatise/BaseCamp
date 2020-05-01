#!/usr/bin/env cwl-runner

baseCommand:
- PLEKModelling.py
class: CommandLineTool
cwlVersion: v1.0
id: plekmodelling.py
inputs:
- doc: 0_or_1 -isrmtempfile 0_or_1
  id: minlength
  inputBinding:
    prefix: -minlength
  type: string
- doc: '0_or_1 '
  id: is_balanced
  inputBinding:
    prefix: -isbalanced
  type: string
- doc: mRNA transcripts used to build predictor, in fasta format.
  id: mrna
  inputBinding:
    prefix: -mRNA
  type: boolean
- doc: lncRNA transcripts used to build predictor, in fasta format.
  id: l_ncrna
  inputBinding:
    prefix: -lncRNA
  type: boolean
- doc: Prefix of the output files.
  id: prefix
  inputBinding:
    prefix: -prefix
  type: boolean
- doc: '(Optional) The specified range of C parameter for the svm parameter  search.
    Default value: 0,5,1. (from, to, by; 0,1,2,3,4,5)   '
  id: log2c
  inputBinding:
    prefix: -log2c
  type: boolean
- doc: '(Optional) The specified range of G parameter for the svm parameter  search.
    Default value: 0,-5,-1.(from, to, by; 0,-1,-2,-3,-4,-5) '
  id: log2g
  inputBinding:
    prefix: -log2g
  type: boolean
- doc: '(Optional) The number of threads for running the PLEKModelling  program. The
    bigger this number is, the faster PLEKModelling runs. Note that a larger thread
    number means larger consumption of memory. Default value: 12.'
  id: thread
  inputBinding:
    prefix: -thread
  type: boolean
- doc: '(Optional) The name of a predictor model file (an output file by PLEKModelling.py).   '
  id: model
  inputBinding:
    prefix: -model
  type: boolean
- doc: '(Optional) The name of a svm range file (an output file by  PLEKModelling.py).   '
  id: range
  inputBinding:
    prefix: -range
  type: boolean
- doc: '(Optional) The minimum length of sequences. The sequences whose  lengths are
    more than minlength will be processed. Default  value: 200.             '
  id: minlength
  inputBinding:
    prefix: -minlength
  type: boolean
- doc: '(Optional) Output messages to stdout(screen) or not. "0" means  that PLEKModelling
    be run quietly. "1" means that PLEKModelling  outputs the details of processing.
    Default value: 0.   '
  id: is_out_msg
  inputBinding:
    prefix: -isoutmsg
  type: boolean
- doc: '(Optional) Remove temporary files or not. "0" means that PLEKModelling  retains
    temporary files. "1" means that PLEKModelling remove temporary  files. Default
    value: 1.'
  id: is_rm_tempfile
  inputBinding:
    prefix: -isrmtempfile
  type: boolean
- doc: '(Optional) range of k. k=5 means that we will calculate usage of  1364 k-mer
    patterns. (k=1, 4 patterns; k=2, 16; k=3, 64; k=4, 256;  k=5, 1024; 1364=4+64+256+1024).
    Default value: 5. '
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '(Optional) n-fold cross-validation in search for optimal parameters. Default
    value: 10.   '
  id: n_fold
  inputBinding:
    prefix: -nfold
  type: boolean
- doc: '(Optional) In the case of isbalanced=1, if the samples are  unbalanced, it
    will subsample the overrepresented class to obtain an  equal amount of positives
    and negatives. Default value: 0.'
  id: is_balanced
  inputBinding:
    prefix: -isbalanced
  type: boolean
- doc: '20140531.range -model 20140531.model '
  id: range
  inputBinding:
    prefix: -range
  type: boolean
- doc: '1,3,1 -log2g -1,-3,-1 -nfold 2 -k 4      '
  id: log2c
  inputBinding:
    prefix: -log2c
  type: boolean
- doc: 20140601.range -model 20140601.model -k 4
  id: range
  inputBinding:
    prefix: -range
  type: boolean
