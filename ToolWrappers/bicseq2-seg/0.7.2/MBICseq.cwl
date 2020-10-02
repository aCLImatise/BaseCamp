class: CommandLineTool
id: MBICseq.cwl
inputs:
- id: in_input_file_name
  doc: ': the input file name; default stdin'
  type: File
  inputBinding:
    prefix: -i
- id: in_penalty_lambda_mbicseq
  doc: ': the penalty lambda of MBIC-seq; default 1.2'
  type: double
  inputBinding:
    prefix: -l
- id: in_rm
  doc: ": remove the candidate CNV regions that are common to all samples;\nuse this\
    \ only if the reference is the expected and both tumor and normal present in the\
    \ binned data,\nin which case these regions are likely to be false positives or\
    \ germline CNVs\n"
  type: boolean
  inputBinding:
    prefix: --rm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MBICseq
