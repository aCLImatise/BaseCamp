#!/usr/bin/env cwl-runner

baseCommand:
- plotkmers
class: CommandLineTool
cwlVersion: v1.0
id: plotkmers
inputs:
- doc: Output directory
  id: output_directory
  inputBinding:
    position: 0
  type: string
- doc: FASTA files which may be gzipped
  id: assemblies
  inputBinding:
    position: 1
  type: string
- doc: Kmer to use, depends on read length [kmerplot.png]
  id: plot_filename
  inputBinding:
    prefix: --plot_filename
  type: string
- doc: Kmer to use, depends on read length [51]
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: Exclude k-mers occurring more than this [254]
  id: max_km_ers_threshold
  inputBinding:
    prefix: --max_kmers_threshold
  type: long
- doc: If there are too many kmers to view, subsample [100000]
  id: max_km_ers_to_show
  inputBinding:
    prefix: --max_kmers_to_show
  type: long
- doc: Number of threads [1]
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Keep intermediate files [False]
  id: keep_files
  inputBinding:
    prefix: --keep_files
  type: boolean
- doc: Turn on debugging [0]
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
