class: CommandLineTool
id: aquila_umap.cwl
inputs:
- id: fa_folder
  doc: 'Required parameter; The folder path where fasta files are saved eg: /path/to/fasta/'
  type: string
  inputBinding:
    prefix: --fa_folder
- id: fa_name
  doc: 'Required parameter; The file name of fasta file eg: sample.fa'
  type: string
  inputBinding:
    prefix: --fa_name
- id: out_dir
  doc: 'Required parameter; The output path eg: /path/to/result/'
  type: string
  inputBinding:
    prefix: --out_dir
- id: chr_start
  doc: chromosome start by,default = 1
  type: string
  inputBinding:
    prefix: --chr_start
- id: chr_end
  doc: chromosome end by,default = 23
  type: string
  inputBinding:
    prefix: --chr_end
- id: km_er_len
  doc: The length of generated kmers,default = 100
  type: string
  inputBinding:
    prefix: --kmer_len
- id: mapq_th_res
  doc: The MAPQ threshold to filter bowtie2 map result, default = 20
  type: string
  inputBinding:
    prefix: --mapq_thres
- id: chr_thread
  doc: number of threads for processing chromosome, default = 2
  type: string
  inputBinding:
    prefix: --chr_thread
- id: bowtie_thread
  doc: number of threads for bowtie2 mapping, default = 10
  type: string
  inputBinding:
    prefix: --bowtie_thread
outputs: []
cwlVersion: v1.1
baseCommand:
- aquila_umap
