class: CommandLineTool
id: biopet_scatterregions.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string?
  inputBinding:
    prefix: --log_level
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_reference_fast_a
  doc: Reference fasta file, (dict file should be next to it)
  type: File?
  inputBinding:
    prefix: --referenceFasta
- id: in_scatter_size
  doc: Approximately scatter size, tool will make all scatters the same size. default
    = 1000000
  type: long?
  inputBinding:
    prefix: --scatterSize
- id: in_regions
  doc: If given only regions in the given bed file will be used for scattering
  type: File?
  inputBinding:
    prefix: --regions
- id: in_not_combine_contigs
  doc: If set each scatter can only contain 1 contig
  type: boolean?
  inputBinding:
    prefix: --notCombineContigs
- id: in_max_contigs_in_scatter_job
  doc: If set each scatter can only contain 1 contig
  type: long?
  inputBinding:
    prefix: --maxContigsInScatterJob
- id: in_bam_file
  doc: When given the regions will be scattered based on number of reads in the index
    file
  type: long?
  inputBinding:
    prefix: --bamFile
- id: in_not_split_contigs
  doc: When this option is set contigs are not split.
  type: boolean?
  inputBinding:
    prefix: --notSplitContigs
- id: in_scatter_regions
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- biopet-scatterregions
