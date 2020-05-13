class: CommandLineTool
id: get_phix174.py.cwl
inputs:
- id: output
  doc: The output directory where the chromosomes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server
  doc: The NCBI server from where the genomes of 'Enterobacteria phage phiX174' is
    downloaded. Default is 'ftp.ncbi.nlm.nih.gov'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_phix174.py
