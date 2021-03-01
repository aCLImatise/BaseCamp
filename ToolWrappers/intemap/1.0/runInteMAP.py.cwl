class: CommandLineTool
id: runInteMAP.py.cwl
inputs:
- id: in_outfile
  doc: Output contig file
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_thread_num
  doc: number of threads, default=2
  type: long?
  inputBinding:
    prefix: --thread_num
- id: in_quality_start
  doc: Quality value ascii start, default=33
  type: string?
  inputBinding:
    prefix: --quality_start
- id: in_min_high_cov_length
  doc: "the high coverage length threashold, above which\nInteMAP will deem that high-coverage\
    \ species exist in\nthe community, and run IDBA-UD and ABySS on the\ncorrected\
    \ read set, default=1000000"
  type: long?
  inputBinding:
    prefix: --minHighCovLength
- id: in_k_for_abyss
  doc: kmer size for ABySS, default=61
  type: long?
  inputBinding:
    prefix: --k_for_abyss
- id: in_min_k_for_i_dba
  doc: minimal kmer size for IDBA_UD, default=23
  type: long?
  inputBinding:
    prefix: --min_k_for_idba
- id: in_high_cov_i_dba
  doc: "lower bound for IDBA-contigs of high coverage,\ndefault=30"
  type: long?
  inputBinding:
    prefix: --high_cov_idba
- id: in_low_cov_i_dba
  doc: "higher bound for IDBA-contigs of low coverage,\ndefault=50"
  type: long?
  inputBinding:
    prefix: --low_cov_idba
- id: in_high_cov_abyss
  doc: "lower bound for ABySS-contigs of high coverage,\ndefault=20"
  type: long?
  inputBinding:
    prefix: --high_cov_abyss
- id: in_clearance
  doc: "make clearance of intermediate output files,\ndefault=False"
  type: boolean?
  inputBinding:
    prefix: --clearance
- id: in_sequence_position_file
  doc: keeps the directories of sequencing reads in the fastq
  type: string
  inputBinding:
    position: 0
- id: in_formats
  doc: libinfo_file          keeps the information of the library for sequencing
  type: string
  inputBinding:
    position: 1
- id: in_reads
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output contig file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- runInteMAP.py
