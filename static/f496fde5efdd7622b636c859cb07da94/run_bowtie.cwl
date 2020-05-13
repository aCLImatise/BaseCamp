class: CommandLineTool
id: run_bowtie.py.cwl
inputs:
- id: km_er_dir
  doc: Directory containing the .kmer files
  type: string
  inputBinding:
    position: 0
- id: bowtie_dir
  doc: Directory containing bowtie executable
  type: string
  inputBinding:
    position: 1
- id: index_dir
  doc: Directory containing bowtie index
  type: string
  inputBinding:
    position: 2
- id: index_name
  doc: prefix name of bowtie index
  type: string
  inputBinding:
    position: 3
- id: bis_map
  doc: Run bowtie with --norc
  type: boolean
  inputBinding:
    prefix: -Bismap
- id: var_id
  doc: HPC environmental variable for JOB ID
  type: string
  inputBinding:
    prefix: -var_id
- id: job_id
  doc: 1-based index for selecting a k-mer file
  type: string
  inputBinding:
    prefix: -job_id
outputs: []
cwlVersion: v1.1
baseCommand:
- run_bowtie.py
