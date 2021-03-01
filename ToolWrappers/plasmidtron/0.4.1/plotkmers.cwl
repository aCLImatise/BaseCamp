class: CommandLineTool
id: plotkmers.cwl
inputs:
- id: in_plot_filename
  doc: Kmer to use, depends on read length [kmerplot.png]
  type: File?
  inputBinding:
    prefix: --plot_filename
- id: in_km_er
  doc: Kmer to use, depends on read length [51]
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_max_km_ers_threshold
  doc: Exclude k-mers occurring more than this [254]
  type: long?
  inputBinding:
    prefix: --max_kmers_threshold
- id: in_max_km_ers_to_show
  doc: "If there are too many kmers to view, subsample\n[100000]"
  type: long?
  inputBinding:
    prefix: --max_kmers_to_show
- id: in_threads
  doc: Number of threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_keep_files
  doc: Keep intermediate files [False]
  type: boolean?
  inputBinding:
    prefix: --keep_files
- id: in_verbose
  doc: Turn on debugging [0]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: in_assemblies
  doc: FASTA files which may be gzipped
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- plotkmers
