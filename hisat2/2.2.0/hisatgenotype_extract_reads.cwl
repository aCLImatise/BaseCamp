class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hisatgenotype_extract_reads.py.cwl
inputs:
- id: base_fname
  doc: base filename for genotype genome
  type: string
  inputBinding:
    prefix: --base-fname
- id: read_dir
  doc: Directory name for read files
  type: string
  inputBinding:
    prefix: --read-dir
- id: out_dir
  doc: Directory name for extracted read files
  type: string
  inputBinding:
    prefix: --out-dir
- id: suffix
  doc: 'Read file suffix (Default: fq.gz)'
  type: string
  inputBinding:
    prefix: --suffix
- id: fast_a
  doc: FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: filename_singleend_reads
  doc: filename for single-end reads
  type: string
  inputBinding:
    prefix: -U
- id: one
  doc: filename for paired-end reads
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: filename for paired-end reads
  type: string
  inputBinding:
    prefix: '-2'
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
