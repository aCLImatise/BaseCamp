class: CommandLineTool
id: runInteMAP.py.cwl
inputs:
- id: sequence_position_file
  doc: keeps the directories of sequencing reads in the fastq formats
  type: string
  inputBinding:
    position: 0
- id: lib_info_file
  doc: keeps the information of the library for sequencing reads
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: Output contig file
  type: string
  inputBinding:
    prefix: --outfile
- id: thread_num
  doc: number of threads, default=2
  type: string
  inputBinding:
    prefix: --thread_num
- id: q
  doc: '{33,64}, --quality_start {33,64} Quality value ascii start, default=33'
  type: boolean
  inputBinding:
    prefix: -q
- id: min_high_cov_length
  doc: the high coverage length threashold, above which InteMAP will deem that high-coverage
    species exist in the community, and run IDBA-UD and ABySS on the corrected read
    set, default=1000000
  type: long
  inputBinding:
    prefix: --minHighCovLength
- id: k_for_abyss
  doc: kmer size for ABySS, default=61
  type: string
  inputBinding:
    prefix: --k_for_abyss
- id: min_k_for_i_dba
  doc: minimal kmer size for IDBA_UD, default=23
  type: long
  inputBinding:
    prefix: --min_k_for_idba
- id: high_cov_i_dba
  doc: lower bound for IDBA-contigs of high coverage, default=30
  type: string
  inputBinding:
    prefix: --high_cov_idba
- id: low_cov_i_dba
  doc: higher bound for IDBA-contigs of low coverage, default=50
  type: string
  inputBinding:
    prefix: --low_cov_idba
- id: high_cov_abyss
  doc: lower bound for ABySS-contigs of high coverage, default=20
  type: string
  inputBinding:
    prefix: --high_cov_abyss
- id: clearance
  doc: make clearance of intermediate output files, default=False
  type: boolean
  inputBinding:
    prefix: --clearance
outputs: []
cwlVersion: v1.1
baseCommand:
- runInteMAP.py
