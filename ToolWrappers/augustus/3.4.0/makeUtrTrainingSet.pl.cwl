class: CommandLineTool
id: makeUtrTrainingSet.pl.cwl
inputs:
- id: in_only_best
  doc: for each stop/start codon only the 3'/5'-UTR from the most frequent splice
    variant
  type: long?
  inputBinding:
    prefix: --onlybest
- id: in_dist
  doc: consider all alignments that start at most n bp downstream of stop codon/upstream
    of the start codon (default 0)
  type: long?
  inputBinding:
    prefix: --dist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- makeUtrTrainingSet.pl
