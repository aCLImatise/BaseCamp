class: CommandLineTool
id: ../../../MTBseq.cwl
inputs:
- id: in_check
  doc: Check the dependencies of MTBseq
  type: boolean
  inputBinding:
    prefix: --check
- id: in_step
  doc: "<ESSENTIAL> This is an essential option! Choose your pipeline step as a parameter!\n\
    TBfull      Full workflow\nTBbwa       Read mapping\nTBrefine    Refinement of\
    \ mapping(s)\nTBpile      Creation of mpileup file(s)\nTBlist      Creation of\
    \ position list(s)\nTBvariants  Calling variants\nTBstats     Statisitcs of mapping(s)\
    \ and variant calling(s)\nTBstrains   Calling lineage from sample(s)\nTBjoin \
    \     Joint variant analysis from defined samples\nTBamend     Amending joint\
    \ variant table(s)\nTBgroups    Detecting groups of samples"
  type: boolean
  inputBinding:
    prefix: --step
- id: in_continue
  doc: ''
  type: boolean
  inputBinding:
    prefix: --continue
- id: in_samples
  doc: ''
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_project
  doc: ''
  type: boolean
  inputBinding:
    prefix: --project
- id: in_resi_list
  doc: ''
  type: boolean
  inputBinding:
    prefix: --resilist
- id: in_int_regions
  doc: ''
  type: boolean
  inputBinding:
    prefix: --intregions
- id: in_categories
  doc: ''
  type: boolean
  inputBinding:
    prefix: --categories
- id: in_base_calib
  doc: ''
  type: boolean
  inputBinding:
    prefix: --basecalib
- id: in_ref
  doc: ''
  type: long
  inputBinding:
    prefix: --ref
- id: in_min_b_qual
  doc: ''
  type: long
  inputBinding:
    prefix: --minbqual
- id: in_all_vars
  doc: ''
  type: boolean
  inputBinding:
    prefix: --all_vars
- id: in_snp_vars
  doc: ''
  type: boolean
  inputBinding:
    prefix: --snp_vars
- id: in_low_freq_vars
  doc: ''
  type: boolean
  inputBinding:
    prefix: --lowfreq_vars
- id: in_minco_vf
  doc: ''
  type: long
  inputBinding:
    prefix: --mincovf
- id: in_minco_vr
  doc: ''
  type: long
  inputBinding:
    prefix: --mincovr
- id: in_min_phred_two_zero
  doc: ''
  type: long
  inputBinding:
    prefix: --minphred20
- id: in_min_freq
  doc: ''
  type: long
  inputBinding:
    prefix: --minfreq
- id: in_unam_big
  doc: ''
  type: long
  inputBinding:
    prefix: --unambig
- id: in_window
  doc: ''
  type: long
  inputBinding:
    prefix: --window
- id: in_distance
  doc: ''
  type: long
  inputBinding:
    prefix: --distance
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: ''
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MTBseq
