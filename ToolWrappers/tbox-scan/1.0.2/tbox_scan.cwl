class: CommandLineTool
id: tbox_scan.cwl
inputs:
- id: in_save_final_results
  doc: ": save final results in <file> as .csv\ndefault: out.csv"
  type: File?
  inputBinding:
    prefix: -o
- id: in_save_infernal_predictions
  doc: ": save INFERNAL output predictions to .txt <file>\ndefault: INFERNAL.txt"
  type: File?
  inputBinding:
    prefix: -i
- id: in_save_txt_file
  doc: ': save a .txt log <file> of pipeline output'
  type: File?
  inputBinding:
    prefix: -l
- id: in_model_search_using
  doc: "<model#> : search for T-boxes using different covariance models\n1: RFAM model\
    \ (RFAM00230.cm), finds mostly class I transcriptional T-boxes (default)\n2: Translational\
    \ Ile (TBDB001.cm), finds mostly class II translational T-boxes"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_score_cutoff_infernal
  doc: ': score cutoff for INFERNAL model predictions (default = 15)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_save_verbose_output
  doc: ': save verbose output'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_silence_console_output
  doc: ': silence console output'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_var_7
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_file_input_fasta
  doc: '-f <file>  : input FASTA <file> (required)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_final_results
  doc: ": save final results in <file> as .csv\ndefault: out.csv"
  type: File?
  outputBinding:
    glob: $(inputs.in_save_final_results)
- id: out_save_infernal_predictions
  doc: ": save INFERNAL output predictions to .txt <file>\ndefault: INFERNAL.txt"
  type: File?
  outputBinding:
    glob: $(inputs.in_save_infernal_predictions)
- id: out_save_txt_file
  doc: ': save a .txt log <file> of pipeline output'
  type: File?
  outputBinding:
    glob: $(inputs.in_save_txt_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tbox-scan:1.0.2--0
cwlVersion: v1.1
baseCommand:
- tbox-scan
