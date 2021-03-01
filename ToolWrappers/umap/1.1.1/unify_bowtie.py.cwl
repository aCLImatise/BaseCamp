class: CommandLineTool
id: unify_bowtie.py.cwl
inputs:
- id: in_job_id
  doc: "If not using a cluster for submitting jobs, specify the\njob_id by integer\
    \ ranging from 1 to total number of\nchromosomes in chrsize_path"
  type: long?
  inputBinding:
    prefix: -job_id
- id: in_var_id
  doc: HPC variable name for job ID (1-based index)
  type: long?
  inputBinding:
    prefix: -var_id
- id: in_bowtie_outdir
  doc: Directory containing bowtie output files
  type: string
  inputBinding:
    position: 0
- id: in_chr_size_path
  doc: "A file containing the order of chromosome names to consider\n(one chromosome\
    \ name per line)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- unify_bowtie.py
