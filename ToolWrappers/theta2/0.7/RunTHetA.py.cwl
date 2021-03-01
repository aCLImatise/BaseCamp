class: CommandLineTool
id: RunTHetA.py.cwl
inputs:
- id: in_tumor_file
  doc: File containing allelic counts for tumor sample SNPs.
  type: File?
  inputBinding:
    prefix: --TUMOR_FILE
- id: in_normal_file
  doc: File containing allelic counts for normal samlpe SNPs.
  type: File?
  inputBinding:
    prefix: --NORMAL_FILE
- id: in_number_of_subpopulations
  doc: Number of subpopulations
  type: long?
  inputBinding:
    prefix: --N
- id: in_max_k
  doc: The maximum value allowed for entries in C
  type: string?
  inputBinding:
    prefix: --MAX_K
- id: in_tau
  doc: Expected number of copies in normal genome
  type: long?
  inputBinding:
    prefix: --TAU
- id: in_dir
  doc: Directory where result file is written to
  type: File?
  inputBinding:
    prefix: --DIR
- id: in_output_prefix
  doc: "Prefix for output files created. By default, it will\nbe the beginning of\
    \ the input file name (i.e.if input\nfilename were example.input, output filed\
    \ would be\nexample.output and example.withbounds)"
  type: File?
  inputBinding:
    prefix: --OUTPUT_PREFIX
- id: in_max_normal
  doc: "The maximum fraction to consider for normal. Only\nenforced for n=2"
  type: long?
  inputBinding:
    prefix: --MAX_NORMAL
- id: in_num_processes
  doc: The number of processes to be used
  type: long?
  inputBinding:
    prefix: --NUM_PROCESSES
- id: in_num_intervals
  doc: "The maximum number of intervals used by automatic\ninterval selection."
  type: long?
  inputBinding:
    prefix: --NUM_INTERVALS
- id: in_normal_bound_heuristic
  doc: Options are .pdf, .jpg, .png, .eps
  type: string?
  inputBinding:
    prefix: --NORMAL_BOUND_HEURISTIC
- id: in_baf
  doc: Option to run the BAF model.
  type: boolean?
  inputBinding:
    prefix: --BAF
- id: in_ratio_dev
  doc: "The deviation away from 1.0 that a ratio must be to be\nconsidered a potential\
    \ copy number aberration."
  type: long?
  inputBinding:
    prefix: --RATIO_DEV
- id: in_min_frac
  doc: "The minimum fraction of the genome that must have a\npotential copy number\
    \ aberration to be a valid sample\nfor THetA analysis."
  type: long?
  inputBinding:
    prefix: --MIN_FRAC
- id: in_no_clustering
  doc: Option to run THetA without clustering.
  type: boolean?
  inputBinding:
    prefix: --NO_CLUSTERING
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RunTHetA.py
