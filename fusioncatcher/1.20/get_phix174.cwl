#!/usr/bin/env cwl-runner

baseCommand:
- get_phix174.py
class: CommandLineTool
cwlVersion: v1.0
id: get_phix174.py
inputs:
- doc: The output directory where the chromosomes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The NCBI server from where the genomes of 'Enterobacteria phage phiX174' is
    downloaded. Default is 'ftp.ncbi.nlm.nih.gov'.
  id: server
  inputBinding:
    prefix: --server
  type: string
