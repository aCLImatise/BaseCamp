class: CommandLineTool
id: hisatgenotype_extract_reads.py.cwl
inputs:
- id: in_base_fname
  doc: base filename for genotype genome
  type: File?
  inputBinding:
    prefix: --base-fname
- id: in_read_dir
  doc: Directory name for read files
  type: Directory?
  inputBinding:
    prefix: --read-dir
- id: in_out_dir
  doc: Directory name for extracted read files
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_suffix
  doc: 'Read file suffix (Default: fq.gz)'
  type: File?
  inputBinding:
    prefix: --suffix
- id: in_fast_a
  doc: FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_filename_singleend_reads
  doc: filename for single-end reads
  type: File?
  inputBinding:
    prefix: -U
- id: in_one
  doc: filename for paired-end reads
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: filename for paired-end reads
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_database_list
  doc: 'A comma-separated list of database (default: empty)'
  type: string?
  inputBinding:
    prefix: --database-list
- id: in_simulation
  doc: 'Simulated reads (Default: False)'
  type: boolean?
  inputBinding:
    prefix: --simulation
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_threads_a_process
  doc: Number of threads a process
  type: long?
  inputBinding:
    prefix: --threads-aprocess
- id: in_max_sample
  doc: "Number of samples to be extracted (default:\nsys.maxint)"
  type: long?
  inputBinding:
    prefix: --max-sample
- id: in_job_range
  doc: two numbers (e.g. 1,3)
  type: long?
  inputBinding:
    prefix: --job-range
- id: in_aligner
  doc: 'Aligner (default: hisat2)'
  type: long?
  inputBinding:
    prefix: --aligner
- id: in_extract_whole
  doc: Extract all reads
  type: boolean?
  inputBinding:
    prefix: --extract-whole
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_extract_reads.py
