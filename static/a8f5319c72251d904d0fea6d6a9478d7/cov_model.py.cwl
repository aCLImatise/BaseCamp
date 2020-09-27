class: CommandLineTool
id: cov_model.py.cwl
inputs:
- id: in_int
  doc: "Kmers were counted as integers w/o the use of quality values\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --int
- id: in_ratio
  doc: "Likelihood ratio to set trusted/untrusted cutoff [default:\n200]"
  type: long
  inputBinding:
    prefix: --ratio
- id: in_no_sample
  doc: "Do not sample kmer coverages into kmers.txt because its\nalready done [default:\
    \ False]\n"
  type: boolean
  inputBinding:
    prefix: --no_sample
- id: in_counts_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cov_model.py
