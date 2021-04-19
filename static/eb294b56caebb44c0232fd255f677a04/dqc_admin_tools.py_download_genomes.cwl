class: CommandLineTool
id: dqc_admin_tools.py_download_genomes.cwl
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
  doc: "Number of threads for parallel processing (default:1)\n"
  type: long?
  inputBinding:
    prefix: --num_threads
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
- download_genomes
