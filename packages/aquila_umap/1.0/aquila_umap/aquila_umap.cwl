class: CommandLineTool
id: aquila_umap.cwl
inputs:
- id: in_fa_folder
  doc: "Required parameter; The folder path where fasta files\nare saved eg: /path/to/fasta/"
  type: Directory
  inputBinding:
    prefix: --fa_folder
- id: in_fa_name
  doc: "Required parameter; The file name of fasta file eg:\nsample.fa"
  type: File
  inputBinding:
    prefix: --fa_name
- id: in_out_dir
  doc: "Required parameter; The output path eg:\n/path/to/result/"
  type: File
  inputBinding:
    prefix: --out_dir
- id: in_chr_start
  doc: chromosome start by,default = 1
  type: long
  inputBinding:
    prefix: --chr_start
- id: in_chr_end
  doc: chromosome end by,default = 23
  type: long
  inputBinding:
    prefix: --chr_end
- id: in_km_er_len
  doc: The length of generated kmers,default = 100
  type: long
  inputBinding:
    prefix: --kmer_len
- id: in_mapq_th_res
  doc: "The MAPQ threshold to filter bowtie2 map result,\ndefault = 20"
  type: long
  inputBinding:
    prefix: --mapq_thres
- id: in_chr_thread
  doc: "number of threads for processing chromosome, default =\n2"
  type: long
  inputBinding:
    prefix: --chr_thread
- id: in_bowtie_thread
  doc: "number of threads for bowtie2 mapping, default = 10\n"
  type: long
  inputBinding:
    prefix: --bowtie_thread
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Required parameter; The output path eg:\n/path/to/result/"
  type: File
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- aquila_umap
