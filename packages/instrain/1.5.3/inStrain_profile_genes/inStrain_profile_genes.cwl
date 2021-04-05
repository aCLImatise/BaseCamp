class: CommandLineTool
id: inStrain_profile_genes.cwl
inputs:
- id: in_gene_file
  doc: "Path to prodigal .fna genes file. If file ends in .gb\nor .gbk, will treat\
    \ as a genbank file (EXPERIMENTAL;\nthe name of the gene must be in the gene qualifier)\n\
    (default: None)"
  type: File?
  inputBinding:
    prefix: --gene_file
- id: in_is
  doc: 'an inStrain profile object (default: None)'
  type: string?
  inputBinding:
    prefix: --IS
- id: in_store_everything
  doc: 'Store gene sequences in the IS object (default: False)'
  type: boolean?
  inputBinding:
    prefix: --store_everything
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/instrain:1.5.3--py_0
cwlVersion: v1.1
baseCommand:
- inStrain
- profile_genes
