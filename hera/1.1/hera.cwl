class: CommandLineTool
id: ../../../hera.cwl
inputs:
- id: output_directory_default
  doc: ':      Output directory (default: ./)'
  type: boolean
  inputBinding:
    prefix: -o
- id: number_threads_default
  doc: ':      Number of threads (default: 1)'
  type: boolean
  inputBinding:
    prefix: -t
- id: compress_level_default
  doc: ':      Compress level (1 - 9) (default: -1)'
  type: boolean
  inputBinding:
    prefix: -z
- id: number_bootstraps_default
  doc: ':      Number of bootstraps (default: 0)'
  type: boolean
  inputBinding:
    prefix: -b
- id: output_bam_file
  doc: ':      Output bam file 0:true, 1: false (default: 0)'
  type: boolean
  inputBinding:
    prefix: -w
- id: genome_fasta_file
  doc: ':      Genome fasta file (if not define, genome mapping will be ignore'
  type: boolean
  inputBinding:
    prefix: -f
- id: output_prefix_default
  doc: ":      Output prefix (default: '')"
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- hera
