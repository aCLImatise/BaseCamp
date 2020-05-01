#!/usr/bin/env cwl-runner

baseCommand:
- aquila_umap
class: CommandLineTool
cwlVersion: v1.0
id: aquila_umap
inputs:
- doc: 'Required parameter; The folder path where fasta files are saved eg: /path/to/fasta/'
  id: fa_folder
  inputBinding:
    prefix: --fa_folder
  type: string
- doc: 'Required parameter; The file name of fasta file eg: sample.fa'
  id: fa_name
  inputBinding:
    prefix: --fa_name
  type: string
- doc: 'Required parameter; The output path eg: /path/to/result/'
  id: out_dir
  inputBinding:
    prefix: --out_dir
  type: string
- doc: chromosome start by,default = 1
  id: chr_start
  inputBinding:
    prefix: --chr_start
  type: string
- doc: chromosome end by,default = 23
  id: chr_end
  inputBinding:
    prefix: --chr_end
  type: string
- doc: The length of generated kmers,default = 100
  id: km_er_len
  inputBinding:
    prefix: --kmer_len
  type: string
- doc: The MAPQ threshold to filter bowtie2 map result, default = 20
  id: mapq_th_res
  inputBinding:
    prefix: --mapq_thres
  type: string
- doc: number of threads for processing chromosome, default = 2
  id: chr_thread
  inputBinding:
    prefix: --chr_thread
  type: string
- doc: number of threads for bowtie2 mapping, default = 10
  id: bowtie_thread
  inputBinding:
    prefix: --bowtie_thread
  type: string
