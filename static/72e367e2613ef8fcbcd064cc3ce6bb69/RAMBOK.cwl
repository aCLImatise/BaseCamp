class: CommandLineTool
id: RAMBOK.py.cwl
inputs:
- id: km_er_sizes
  doc: Order of Markov-Chain/kmer length. Enter as range (e.g. 4:8) or list (e.g.
    4,6,8) or integer (e.g. 8). Default = 8
  type: string
  inputBinding:
    prefix: --kmersizes
- id: out_path
  doc: Folder to write results to. Default = $name1_$name2/ in your working directory
  type: string
  inputBinding:
    prefix: --outpath
- id: amount
  doc: Number of reads to be simulated, default = 50000
  type: string
  inputBinding:
    prefix: --amount
- id: threads
  doc: Number of Threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: chunksize
  doc: Size of chunks created at a time for simulation, default = 100000. Only change
    if you know what you are doing!
  type: string
  inputBinding:
    prefix: --chunksize
- id: gap_size
  doc: Estimated size of gapsize in case of paired end reads, default = 1
  type: string
  inputBinding:
    prefix: --gapsize
- id: cut_off_lower
  doc: 'Lower cutoff: Output only reads with a score lower than or equal to this value,
    use m1 for -1'
  type: string
  inputBinding:
    prefix: --cutoff_lower
- id: cut_off_higher
  doc: 'Higher cutoff: Output only reads with a score higher than or equal to this
    value, use m1 for -1'
  type: string
  inputBinding:
    prefix: --cutoff_higher
- id: delete_temp
  doc: \Delete temporary files. Calculations will start from beginning next time.
  type: boolean
  inputBinding:
    prefix: --delete_temp
- id: file_type
  doc: Type of your input reads. fasta or fastq, default = fastq
  type: File
  inputBinding:
    prefix: --filetype
outputs: []
cwlVersion: v1.1
baseCommand:
- RAMBOK.py
