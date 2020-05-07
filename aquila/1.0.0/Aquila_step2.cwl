class: CommandLineTool
id: Aquila_step2.cwl
inputs:
- id: chr_start
  doc: chromosome start from, default = 1
  type: string
  inputBinding:
    prefix: --chr_start
- id: chr_end
  doc: chromosome end by, default = 23
  type: string
  inputBinding:
    prefix: --chr_end
- id: out_dir
  doc: Required parameter; Directory to store assembly results
  type: string
  inputBinding:
    prefix: --out_dir
- id: reference
  doc: Required parameter; reference fasta file, run ./install to download "source/ref.fa"
    for GRCh38
  type: string
  inputBinding:
    prefix: --reference
- id: num_threads
  doc: number of threads, default = 30, this correponds to number of small files get
    assembled simulateoulsy
  type: string
  inputBinding:
    prefix: --num_threads
- id: num_threads_spades
  doc: number of threads for spades, default = 5
  type: string
  inputBinding:
    prefix: --num_threads_spades
- id: block_len_use
  doc: phase block len threshold, default = 100000
  type: string
  inputBinding:
    prefix: --block_len_use
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_step2
