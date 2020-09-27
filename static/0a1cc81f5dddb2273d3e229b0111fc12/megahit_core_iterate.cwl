class: CommandLineTool
id: megahit_core_iterate.cwl
inputs:
- id: in_contig_file
  doc: (*) contigs file, fasta/fastq format, output by assembler
  type: File
  inputBinding:
    prefix: --contig_file
- id: in_bubble_file
  doc: (*) bubble file, fasta/fastq format, output by assembler
  type: File
  inputBinding:
    prefix: --bubble_file
- id: in_read_file
  doc: (*) reads to be aligned. "-" for stdin. Can be gzip'ed.
  type: string
  inputBinding:
    prefix: --read_file
- id: in_num_cpu_threads
  doc: (=0)         number of cpu threads, at least 2. 0 for auto detect.
  type: long
  inputBinding:
    prefix: --num_cpu_threads
- id: in_km_er_k
  doc: (=0)                  (*) current kmer size.
  type: long
  inputBinding:
    prefix: --kmer_k
- id: in_step
  doc: (=0)                    (*) step for iteration (<= 28). i.e. this iteration
    is from kmer_k to (kmer_k + step)
  type: long
  inputBinding:
    prefix: --step
- id: in_output_prefix
  doc: (*) output_prefix.edges.0 will be created.
  type: double
  inputBinding:
    prefix: --output_prefix
- id: in_iterate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_opt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_contig_file
  doc: (*) contigs file, fasta/fastq format, output by assembler
  type: File
  outputBinding:
    glob: $(inputs.in_contig_file)
- id: out_bubble_file
  doc: (*) bubble file, fasta/fastq format, output by assembler
  type: File
  outputBinding:
    glob: $(inputs.in_bubble_file)
cwlVersion: v1.1
baseCommand:
- megahit_core
- iterate
