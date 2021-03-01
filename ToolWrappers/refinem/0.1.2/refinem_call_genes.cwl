class: CommandLineTool
id: refinem_call_genes.cwl
inputs:
- id: in_unbinned_file
  doc: call genes on unbinned scaffolds
  type: File?
  inputBinding:
    prefix: --unbinned_file
- id: in_genome_ext
  doc: "extension of genomes (other files in directory are\nignored) (default: fna)"
  type: Directory?
  inputBinding:
    prefix: --genome_ext
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_genome_nt_dir
  doc: directory containing nucleotide scaffolds for each
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: output_dir            output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refinem:0.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- refinem
- call_genes
