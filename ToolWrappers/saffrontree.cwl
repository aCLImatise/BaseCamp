class: CommandLineTool
id: saffrontree.cwl
inputs:
- id: in_km_er
  doc: Kmer to use, depends on read length [31]
  type: long
  inputBinding:
    prefix: --kmer
- id: in_min_km_ers_threshold
  doc: Exclude k-mers occurring less than this [5]
  type: long
  inputBinding:
    prefix: --min_kmers_threshold
- id: in_max_km_ers_threshold
  doc: Exclude k-mers occurring more than this [255]
  type: long
  inputBinding:
    prefix: --max_kmers_threshold
- id: in_threads
  doc: Number of threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_keep_files
  doc: Keep intermediate files [False]
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: in_verbose
  doc: Turn on more debugging output [False]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: in_input_files
  doc: FASTQ/FASTA files which may be gzipped
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- saffrontree
