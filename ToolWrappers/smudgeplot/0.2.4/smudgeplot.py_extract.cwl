class: CommandLineTool
id: smudgeplot.py_extract.cwl
inputs:
- id: in_coverage_file
  doc: coverage file for the kmer pairs
  type: File?
  inputBinding:
    prefix: --coverageFile
- id: in_seq_file
  doc: sequences of the kmer pairs
  type: File?
  inputBinding:
    prefix: --seqFile
- id: in_count_min
  doc: lower bound of the summed coverage
  type: long?
  inputBinding:
    prefix: --countMin
- id: in_count_max
  doc: upper bound of the summed coverage
  type: long?
  inputBinding:
    prefix: --countMax
- id: in_ratio_min
  doc: lower bound of minor allele ratio
  type: long?
  inputBinding:
    prefix: --ratioMin
- id: in_ratio_max
  doc: "upper bound of minor allele ratio\n"
  type: long?
  inputBinding:
    prefix: --ratioMax
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smudgeplot:0.2.4--py38r40h516909a_0
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- extract
