class: CommandLineTool
id: hisatgenotype_extract_reads.py.cwl
inputs:
- id: database_list
  doc: 'A comma-separated list of database (default: empty)'
  type: string
  inputBinding:
    prefix: --database-list
- id: simulation
  doc: 'Simulated reads (Default: False)'
  type: boolean
  inputBinding:
    prefix: --simulation
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: threads_a_process
  doc: Number of threads a process
  type: string
  inputBinding:
    prefix: --threads-aprocess
- id: max_sample
  doc: 'Number of samples to be extracted (default: sys.maxint)'
  type: long
  inputBinding:
    prefix: --max-sample
- id: job_range
  doc: two numbers (e.g. 1,3)
  type: string
  inputBinding:
    prefix: --job-range
- id: aligner
  doc: 'Aligner (default: hisat2)'
  type: string
  inputBinding:
    prefix: --aligner
- id: extract_whole
  doc: Extract all reads
  type: boolean
  inputBinding:
    prefix: --extract-whole
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_extract_reads.py
