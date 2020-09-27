class: CommandLineTool
id: combine_umaps.py.cwl
inputs:
- id: in_out_dir
  doc: "If not specified, a subfolder will be created in\nkmer_dir names as\nglobalmap_k<smallestkmer>tok<largestkmer>"
  type: string
  inputBinding:
    prefix: -out_dir
- id: in_job_id
  doc: 1-based index for finding chromosome from
  type: long
  inputBinding:
    prefix: -job_id
- id: in_chr_size_path_dot
  doc: not specified, it will user -var_id
  type: string
  inputBinding:
    prefix: -chrsize_path.
- id: in_var_id
  doc: "If -job_id is not specified, job_id will be inferred\nfrom environmental variable\
    \ -var_id."
  type: string
  inputBinding:
    prefix: -var_id
- id: in_km_er_dir_two
  doc: "Specify to merge kmers of two different directories by\nlogical operation\
    \ AND.\n"
  type: long
  inputBinding:
    prefix: -kmer_dir_2
- id: in_km_er_dir
  doc: Directory with subfolders named as k<read length>)
  type: string
  inputBinding:
    position: 0
- id: in_chr_size_path
  doc: "Path to 2 column tsv file with first column as\nchromosome and second column\
    \ as its size. Will be used\nto identify order of the chromosomes."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- combine_umaps.py
