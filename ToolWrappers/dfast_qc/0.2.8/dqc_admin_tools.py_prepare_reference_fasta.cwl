class: CommandLineTool
id: dqc_admin_tools.py_prepare_reference_fasta.cwl
inputs:
- id: in_debug
  doc: Debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_ref_dir
  doc: 'DQC reference directory (default: DQC_REFERENCE_DIR)'
  type: File?
  inputBinding:
    prefix: --ref_dir
- id: in_num_threads
  doc: Number of threads for parallel processing (default:1)
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_delete_existing_marker
  doc: "Delete existing markers and recreate all markers.\n"
  type: boolean?
  inputBinding:
    prefix: --delete_existing_marker
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dfast_qc:0.2.8--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- dqc_admin_tools.py
- prepare_reference_fasta
