class: CommandLineTool
id: combine_umaps.py.cwl
inputs:
- id: km_er_dir
  doc: Directory with subfolders named as k<read length>)
  type: string
  inputBinding:
    position: 0
- id: chr_size_path
  doc: Path to 2 column tsv file with first column as chromosome and second column
    as its size. Will be used to identify order of the chromosomes.
  type: string
  inputBinding:
    position: 1
- id: out_dir
  doc: If not specified, a subfolder will be created in kmer_dir names as globalmap_k<smallestkmer>tok<largestkmer>
  type: string
  inputBinding:
    prefix: -out_dir
- id: job_id
  doc: 1-based index for finding chromosome from -chrsize_path. If not specified,
    it will user -var_id to infer the chromosome for combining mappabilitiy of different
    kmers.
  type: string
  inputBinding:
    prefix: -job_id
- id: var_id
  doc: If -job_id is not specified, job_id will be inferred from environmental variable
    -var_id.
  type: string
  inputBinding:
    prefix: -var_id
- id: km_er_dir_2
  doc: Specify to merge kmers of two different directories by logical operation AND.
  type: string
  inputBinding:
    prefix: -kmer_dir_2
outputs: []
cwlVersion: v1.1
baseCommand:
- combine_umaps.py
