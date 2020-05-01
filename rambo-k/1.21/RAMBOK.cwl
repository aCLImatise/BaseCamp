#!/usr/bin/env cwl-runner

baseCommand:
- RAMBOK.py
class: CommandLineTool
cwlVersion: v1.0
id: rambok.py
inputs:
- doc: Order of Markov-Chain/kmer length. Enter as range (e.g. 4:8) or list (e.g.
    4,6,8) or integer (e.g. 8). Default = 8
  id: km_er_sizes
  inputBinding:
    prefix: --kmersizes
  type: string
- doc: Folder to write results to. Default = $name1_$name2/ in your working directory
  id: out_path
  inputBinding:
    prefix: --outpath
  type: string
- doc: Number of reads to be simulated, default = 50000
  id: amount
  inputBinding:
    prefix: --amount
  type: string
- doc: Number of Threads to use
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Size of chunks created at a time for simulation, default = 100000. Only change
    if you know what you are doing!
  id: chunksize
  inputBinding:
    prefix: --chunksize
  type: string
- doc: Estimated size of gapsize in case of paired end reads, default = 1
  id: gap_size
  inputBinding:
    prefix: --gapsize
  type: string
- doc: 'Lower cutoff: Output only reads with a score lower than or equal to this value,
    use m1 for -1'
  id: cut_off_lower
  inputBinding:
    prefix: --cutoff_lower
  type: string
- doc: 'Higher cutoff: Output only reads with a score higher than or equal to this
    value, use m1 for -1'
  id: cut_off_higher
  inputBinding:
    prefix: --cutoff_higher
  type: string
- doc: \Delete temporary files. Calculations will start from beginning next time.
  id: delete_temp
  inputBinding:
    prefix: --delete_temp
  type: boolean
- doc: Type of your input reads. fasta or fastq, default = fastq
  id: file_type
  inputBinding:
    prefix: --filetype
  type: File
