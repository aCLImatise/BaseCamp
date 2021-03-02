class: CommandLineTool
id: run_dbcan.py.cwl
inputs:
- id: in_cluster
  doc: "Predict CGCs via CGCFinder. This argument requires an\nauxillary locations\
    \ file if a protein input is being\nused"
  type: File?
  inputBinding:
    prefix: --cluster
- id: in_db_can_file
  doc: "Indicate the file name of HMM database such as\ndbCAN.txt, please use the\
    \ newest one from dbCAN2\nwebsite."
  type: File?
  inputBinding:
    prefix: --dbCANFile
- id: in_dia_eval
  doc: DIAMOND E Value
  type: string?
  inputBinding:
    prefix: --dia_eval
- id: in_dia_cpu
  doc: Number of CPU cores that DIAMOND is allowed to use
  type: long?
  inputBinding:
    prefix: --dia_cpu
- id: in_hmm_eval
  doc: HMMER E Value
  type: string?
  inputBinding:
    prefix: --hmm_eval
- id: in_hmm_cov
  doc: HMMER Coverage val
  type: string?
  inputBinding:
    prefix: --hmm_cov
- id: in_hmm_cpu
  doc: Number of CPU cores that HMMER is allowed to use
  type: long?
  inputBinding:
    prefix: --hmm_cpu
- id: in_hot_pep_hits
  doc: Hotpep Hit value
  type: string?
  inputBinding:
    prefix: --hotpep_hits
- id: in_hot_pep_freq
  doc: Hotpep Frequency value
  type: string?
  inputBinding:
    prefix: --hotpep_freq
- id: in_hot_pep_cpu
  doc: Number of CPU cores that Hotpep is allowed to use
  type: long?
  inputBinding:
    prefix: --hotpep_cpu
- id: in_tf_eval
  doc: tf.hmm HMMER E Value
  type: string?
  inputBinding:
    prefix: --tf_eval
- id: in_tf_cov
  doc: tf.hmm HMMER Coverage val
  type: string?
  inputBinding:
    prefix: --tf_cov
- id: in_tf_cpu
  doc: tf.hmm Number of CPU cores that HMMER is allowed to
  type: long?
  inputBinding:
    prefix: --tf_cpu
- id: in_stp_cov
  doc: stp.hmm HMMER Coverage val
  type: string?
  inputBinding:
    prefix: --stp_cov
- id: in_stp_cpu
  doc: stp.hmm Number of CPU cores that HMMER is allowed to
  type: long?
  inputBinding:
    prefix: --stp_cpu
- id: in_out_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_db_dir
  doc: Database directory
  type: Directory?
  inputBinding:
    prefix: --db_dir
- id: in_cgc_dis
  doc: CGCFinder Distance value
  type: string?
  inputBinding:
    prefix: --cgc_dis
- id: in_cgc_sig_genes
  doc: CGCFinder Signature Genes value
  type: string?
  inputBinding:
    prefix: --cgc_sig_genes
- id: in_tools
  doc: "[{hmmer,diamond,hotpep,all} ...], -t {hmmer,diamond,hotpep,all} [{hmmer,diamond,hotpep,all}\
    \ ...]\nChoose a combination of tools to run"
  type: string?
  inputBinding:
    prefix: --tools
- id: in_use_signalp
  doc: "Use signalP or not, remember, you need to setup\nsignalP tool first. Because\
    \ of signalP license, Docker\nversion does not have signalP."
  type: string?
  inputBinding:
    prefix: --use_signalP
- id: in_gram
  doc: "Choose gram+(p) or gram-(n) for proteome/prokaryote\nnucleotide, which are\
    \ params of SingalP, only if user\nuse singalP\n"
  type: string?
  inputBinding:
    prefix: --gram
- id: in_input_file
  doc: User input file. Must be in FASTA format.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- run_dbcan.py
