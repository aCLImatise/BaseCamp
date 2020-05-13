class: CommandLineTool
id: refinem_call_genes.cwl
inputs:
- id: genome_nt_dir
  doc: directory containing nucleotide scaffolds for each genome
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
- id: unbinned_file
  doc: call genes on unbinned scaffolds
  type: string
  inputBinding:
    prefix: --unbinned_file
- id: genome_ext
  doc: 'extension of genomes (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --genome_ext
- id: cpus
  doc: 'number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: silent
  doc: suppress output of logger
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- refinem
- call_genes
