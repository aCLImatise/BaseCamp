class: CommandLineTool
id: shield_genes.py.cwl
inputs:
- id: organism
  doc: The name of the organism, e.g. homo_sapiens, mus_musculus, etc. Default is
    'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the output will be written. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: read_len
  doc: Read length used to computer the similarity between different regions/genes.
    Default is '60'.
  type: string
  inputBinding:
    prefix: --read-len
- id: pseudo_genes_check
  doc: Skip the pseudogenes check. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --pseudo-genes-check
- id: use_synonyms
  doc: Use the synonyms symbols for genes. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --use-synonyms
outputs: []
cwlVersion: v1.1
baseCommand:
- shield_genes.py
