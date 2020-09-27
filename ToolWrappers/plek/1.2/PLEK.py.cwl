class: CommandLineTool
id: PLEK.py.cwl
inputs:
- id: in_is_rm_tempfile
  doc: "-fasta               The name of a fasta file, its sequences are to be predicted.\n\
    -out           The file name for the results of prediction. Predicted positive\n\
    samples are labeled as \"Coding\", and negative as \"Non-coding\".\n-thread  \
    \       (Optional) The number of threads for running the PLEK program.\nThe bigger\
    \ this number is, the faster PLEK runs. Default value: 5.\n-minlength   (Optional)\
    \ The minimum length of sequences. The sequences whose\nlengths are more than\
    \ minlength will be processed. Default\nvalue: 200.\n-isoutmsg     (Optional)\
    \ Output messages to stdout(screen) or not. \"0\" means\nthat PLEK be run quietly.\
    \ \"1\" means that PLEK outputs the details\nof processing. Default value: 0.\n\
    -isrmtempfile (Optional) Remove temporary files or not. \"0\" means that PLEK\n\
    retains temporary files. \"1\" means that PLEK remove temporary\nfiles. Default\
    \ value: 1."
  type: long
  inputBinding:
    prefix: -isrmtempfile
- id: in_thread
  doc: ''
  type: long
  inputBinding:
    prefix: -thread
- id: in_out
  doc: ''
  type: File
  inputBinding:
    prefix: -out
- id: in_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: -fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- PLEK.py
