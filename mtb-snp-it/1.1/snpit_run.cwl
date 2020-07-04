class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snpit_run.py.cwl
inputs:
- id: input
  doc: the path to the VCF or FASTA file to read and classify (either can be bzip2ed/gzipped)
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- snpit-run.py
