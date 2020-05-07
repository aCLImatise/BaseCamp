class: CommandLineTool
id: biopet_scatterregions.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: output_dir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outputDir
- id: reference_fast_a
  doc: Reference fasta file, (dict file should be next to it)
  type: string
  inputBinding:
    prefix: --referenceFasta
- id: scatter_size
  doc: Approximately scatter size, tool will make all scatters the same size. default
    = 1000000
  type: string
  inputBinding:
    prefix: --scatterSize
- id: regions
  doc: If given only regions in the given bed file will be used for scattering
  type: string
  inputBinding:
    prefix: --regions
- id: not_combine_contigs
  doc: If set each scatter can only contain 1 contig
  type: boolean
  inputBinding:
    prefix: --notCombineContigs
- id: max_contigs_in_scatter_job
  doc: If set each scatter can only contain 1 contig
  type: string
  inputBinding:
    prefix: --maxContigsInScatterJob
- id: bam_file
  doc: When given the regions will be scattered based on number of reads in the index
    file
  type: string
  inputBinding:
    prefix: --bamFile
- id: not_split_contigs
  doc: When this option is set contigs are not split.
  type: boolean
  inputBinding:
    prefix: --notSplitContigs
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-scatterregions
