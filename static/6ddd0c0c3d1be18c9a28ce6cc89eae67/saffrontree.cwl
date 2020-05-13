class: CommandLineTool
id: saffrontree.cwl
inputs:
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: input_files
  doc: FASTQ/FASTA files which may be gzipped
  type: string
  inputBinding:
    position: 1
- id: km_er
  doc: Kmer to use, depends on read length [31]
  type: string
  inputBinding:
    prefix: --kmer
- id: min_km_ers_threshold
  doc: Exclude k-mers occurring less than this [5]
  type: long
  inputBinding:
    prefix: --min_kmers_threshold
- id: max_km_ers_threshold
  doc: Exclude k-mers occurring more than this [255]
  type: long
  inputBinding:
    prefix: --max_kmers_threshold
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
  doc: Turn on more debugging output [False]
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- saffrontree
