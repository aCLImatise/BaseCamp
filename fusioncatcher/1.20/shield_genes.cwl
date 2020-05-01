#!/usr/bin/env cwl-runner

baseCommand:
- shield_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: shield_genes.py
inputs:
- doc: The name of the organism, e.g. homo_sapiens, mus_musculus, etc. Default is
    'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the output will be written. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Read length used to computer the similarity between different regions/genes.
    Default is '60'.
  id: read_len
  inputBinding:
    prefix: --read-len
  type: string
- doc: Skip the pseudogenes check. Default is 'False'.
  id: pseudo_genes_check
  inputBinding:
    prefix: --pseudo-genes-check
  type: boolean
- doc: Use the synonyms symbols for genes. Default is 'False'.
  id: use_synonyms
  inputBinding:
    prefix: --use-synonyms
  type: boolean
