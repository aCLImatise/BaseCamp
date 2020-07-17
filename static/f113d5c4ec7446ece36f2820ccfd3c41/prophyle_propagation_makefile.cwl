class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophyle_propagation_makefile.py.cwl
inputs:
- id: kmer_length
  doc: k-mer length
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_propagation_makefile.py
