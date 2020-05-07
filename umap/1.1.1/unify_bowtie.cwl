class: CommandLineTool
id: unify_bowtie.py.cwl
inputs:
- id: bowtie_outdir
  doc: Directory containing bowtie output files
  type: string
  inputBinding:
    position: 0
- id: chr_size_path
  doc: A file containing the order of chromosome names to consider (one chromosome
    name per line)
  type: string
  inputBinding:
    position: 1
- id: job_id
  doc: If not using a cluster for submitting jobs, specify the job_id by integer ranging
    from 1 to total number of chromosomes in chrsize_path
  type: string
  inputBinding:
    prefix: -job_id
- id: var_id
  doc: HPC variable name for job ID (1-based index)
  type: string
  inputBinding:
    prefix: -var_id
outputs: []
cwlVersion: v1.1
baseCommand:
- unify_bowtie.py
