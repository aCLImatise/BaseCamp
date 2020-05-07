class: CommandLineTool
id: MBICseq.cwl
inputs:
- id: i
  doc: ': the input file name; default stdin'
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: ': the penalty lambda of MBIC-seq; default 1.2'
  type: double
  inputBinding:
    prefix: -l
- id: rm
  doc: ': remove the candidate CNV regions that are common to all samples; use this
    only if the reference is the expected and both tumor and normal present in the
    binned data, in which case these regions are likely to be false positives or germline
    CNVs'
  type: boolean
  inputBinding:
    prefix: --rm
outputs: []
cwlVersion: v1.1
baseCommand:
- MBICseq
