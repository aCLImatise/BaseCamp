class: CommandLineTool
id: plotkmers.cwl
inputs:
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: assemblies
  doc: FASTA files which may be gzipped
  type: string
  inputBinding:
    position: 1
- id: plot_filename
  doc: Kmer to use, depends on read length [kmerplot.png]
  type: string
  inputBinding:
    prefix: --plot_filename
- id: km_er
  doc: Kmer to use, depends on read length [51]
  type: string
  inputBinding:
    prefix: --kmer
- id: max_km_ers_threshold
  doc: Exclude k-mers occurring more than this [254]
  type: long
  inputBinding:
    prefix: --max_kmers_threshold
- id: max_km_ers_to_show
  doc: If there are too many kmers to view, subsample [100000]
  type: long
  inputBinding:
    prefix: --max_kmers_to_show
- id: threads
  doc: Number of threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: keep_files
  doc: Keep intermediate files [False]
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: verbose
  doc: Turn on debugging [0]
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- plotkmers
