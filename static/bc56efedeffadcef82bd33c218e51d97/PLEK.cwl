class: CommandLineTool
id: PLEK.py.cwl
inputs:
- id: minlength
  doc: 0_or_1 -isrmtempfile 0_or_1
  type: long
  inputBinding:
    prefix: -minlength
- id: fast_a
  doc: The name of a fasta file, its sequences are to be predicted.
  type: boolean
  inputBinding:
    prefix: -fasta
- id: out
  doc: The file name for the results of prediction. Predicted positive  samples are
    labeled as "Coding", and negative as "Non-coding".
  type: boolean
  inputBinding:
    prefix: -out
- id: thread
  doc: '(Optional) The number of threads for running the PLEK program.  The bigger
    this number is, the faster PLEK runs. Default value: 5.'
  type: boolean
  inputBinding:
    prefix: -thread
- id: minlength
  doc: '(Optional) The minimum length of sequences. The sequences whose  lengths are
    more than minlength will be processed. Default  value: 200.'
  type: boolean
  inputBinding:
    prefix: -minlength
- id: is_out_msg
  doc: '(Optional) Output messages to stdout(screen) or not. "0" means  that PLEK
    be run quietly. "1" means that PLEK outputs the details of processing. Default
    value: 0.'
  type: boolean
  inputBinding:
    prefix: -isoutmsg
- id: is_rm_tempfile
  doc: '(Optional) Remove temporary files or not. "0" means that PLEK  retains temporary
    files. "1" means that PLEK remove temporary  files. Default value: 1.'
  type: boolean
  inputBinding:
    prefix: -isrmtempfile
outputs: []
cwlVersion: v1.1
baseCommand:
- PLEK.py
