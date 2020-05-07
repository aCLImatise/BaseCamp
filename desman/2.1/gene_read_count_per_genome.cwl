class: CommandLineTool
id: gene_read_count_per_genome.py.cwl
inputs:
- id: gene_file
  doc: gene positions
  type: string
  inputBinding:
    position: 0
- id: re_ffa
  doc: Reference fasta file
  type: string
  inputBinding:
    position: 1
- id: bam_files
  doc: BAM files with mappings to contigs
  type: string
  inputBinding:
    position: 2
- id: max_n_processors
  doc: Specify the maximum number of processors to use, if absent, all present processors
    will be used.
  type: long
  inputBinding:
    prefix: --max_n_processors
outputs: []
cwlVersion: v1.1
baseCommand:
- gene_read_count_per_genome.py
