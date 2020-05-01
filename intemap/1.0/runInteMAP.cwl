#!/usr/bin/env cwl-runner

baseCommand:
- runInteMAP.py
class: CommandLineTool
cwlVersion: v1.0
id: runintemap.py
inputs:
- doc: keeps the directories of sequencing reads in the fastq formats
  id: sequence_position_file
  inputBinding:
    position: 0
  type: string
- doc: keeps the information of the library for sequencing reads
  id: lib_info_file
  inputBinding:
    position: 1
  type: string
- doc: Output contig file
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: number of threads, default=2
  id: thread_num
  inputBinding:
    prefix: --thread_num
  type: string
- doc: '{33,64}, --quality_start {33,64} Quality value ascii start, default=33'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: the high coverage length threashold, above which InteMAP will deem that high-coverage
    species exist in the community, and run IDBA-UD and ABySS on the corrected read
    set, default=1000000
  id: min_high_cov_length
  inputBinding:
    prefix: --minHighCovLength
  type: long
- doc: kmer size for ABySS, default=61
  id: k_for_abyss
  inputBinding:
    prefix: --k_for_abyss
  type: string
- doc: minimal kmer size for IDBA_UD, default=23
  id: min_k_for_i_dba
  inputBinding:
    prefix: --min_k_for_idba
  type: long
- doc: lower bound for IDBA-contigs of high coverage, default=30
  id: high_cov_i_dba
  inputBinding:
    prefix: --high_cov_idba
  type: string
- doc: higher bound for IDBA-contigs of low coverage, default=50
  id: low_cov_i_dba
  inputBinding:
    prefix: --low_cov_idba
  type: string
- doc: lower bound for ABySS-contigs of high coverage, default=20
  id: high_cov_abyss
  inputBinding:
    prefix: --high_cov_abyss
  type: string
- doc: make clearance of intermediate output files, default=False
  id: clearance
  inputBinding:
    prefix: --clearance
  type: boolean
