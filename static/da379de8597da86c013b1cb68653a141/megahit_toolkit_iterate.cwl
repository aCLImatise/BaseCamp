class: CommandLineTool
id: megahit_toolkit_iterate.cwl
inputs:
- id: iterate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: opt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contig_file
  doc: (*) contigs file, fasta/fastq format, output by assembler
  type: string
  inputBinding:
    prefix: --contig_file
- id: bubble_file
  doc: (*) bubble file, fasta/fastq format, output by assembler
  type: string
  inputBinding:
    prefix: --bubble_file
- id: read_file
  doc: (*) reads to be aligned. "-" for stdin. Can be gzip'ed.
  type: string
  inputBinding:
    prefix: --read_file
- id: num_cpu_threads
  doc: (=0)         number of cpu threads, at least 2. 0 for auto detect.
  type: string
  inputBinding:
    prefix: --num_cpu_threads
- id: km_er_k
  doc: (=0)                  (*) current kmer size.
  type: string
  inputBinding:
    prefix: --kmer_k
- id: step
  doc: (=0)                    (*) step for iteration (<= 28). i.e. this iteration
    is from kmer_k to (kmer_k + step)
  type: string
  inputBinding:
    prefix: --step
- id: output_prefix
  doc: (*) output_prefix.edges.0 will be created.
  type: string
  inputBinding:
    prefix: --output_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_toolkit
- iterate
