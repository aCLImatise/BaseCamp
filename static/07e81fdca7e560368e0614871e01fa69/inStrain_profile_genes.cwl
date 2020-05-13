class: CommandLineTool
id: inStrain_profile_genes.cwl
inputs:
- id: gene_file
  doc: 'Path to prodigal .fna genes file. If file ends in .gb or .gbk, will treat
    as a genbank file (EXPERIMENTAL; the name of the gene must be in the gene qualifier)
    (default: None)'
  type: string
  inputBinding:
    prefix: --gene_file
- id: is
  doc: 'an inStrain profile object (default: None)'
  type: string
  inputBinding:
    prefix: --IS
- id: store_everything
  doc: 'Store gene sequences in the IS object (default: False)'
  type: boolean
  inputBinding:
    prefix: --store_everything
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- profile_genes
