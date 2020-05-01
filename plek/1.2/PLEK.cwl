#!/usr/bin/env cwl-runner

baseCommand:
- PLEK.py
class: CommandLineTool
cwlVersion: v1.0
id: plek.py
inputs:
- doc: 0_or_1 -isrmtempfile 0_or_1
  id: minlength
  inputBinding:
    prefix: -minlength
  type: long
- doc: The name of a fasta file, its sequences are to be predicted.
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: boolean
- doc: The file name for the results of prediction. Predicted positive  samples are
    labeled as "Coding", and negative as "Non-coding".
  id: out
  inputBinding:
    prefix: -out
  type: boolean
- doc: '(Optional) The number of threads for running the PLEK program.  The bigger
    this number is, the faster PLEK runs. Default value: 5.'
  id: thread
  inputBinding:
    prefix: -thread
  type: boolean
- doc: '(Optional) The minimum length of sequences. The sequences whose  lengths are
    more than minlength will be processed. Default  value: 200.'
  id: minlength
  inputBinding:
    prefix: -minlength
  type: boolean
- doc: '(Optional) Output messages to stdout(screen) or not. "0" means  that PLEK
    be run quietly. "1" means that PLEK outputs the details of processing. Default
    value: 0.'
  id: is_out_msg
  inputBinding:
    prefix: -isoutmsg
  type: boolean
- doc: '(Optional) Remove temporary files or not. "0" means that PLEK  retains temporary
    files. "1" means that PLEK remove temporary  files. Default value: 1.'
  id: is_rm_tempfile
  inputBinding:
    prefix: -isrmtempfile
  type: boolean
