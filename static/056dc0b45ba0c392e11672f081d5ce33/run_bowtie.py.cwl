class: CommandLineTool
id: run_bowtie.py.cwl
inputs:
- id: in_bis_map
  doc: Run bowtie with --norc
  type: boolean?
  inputBinding:
    prefix: -Bismap
- id: in_var_id
  doc: HPC environmental variable for JOB ID
  type: string?
  inputBinding:
    prefix: -var_id
- id: in_job_id
  doc: 1-based index for selecting a k-mer file
  type: File?
  inputBinding:
    prefix: -job_id
- id: in_km_er_dir
  doc: Directory containing the .kmer files
  type: string
  inputBinding:
    position: 0
- id: in_bowtie_dir
  doc: Directory containing bowtie executable
  type: string
  inputBinding:
    position: 1
- id: in_index_dir
  doc: Directory containing bowtie index
  type: string
  inputBinding:
    position: 2
- id: in_index_name
  doc: prefix name of bowtie index
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_bowtie.py
