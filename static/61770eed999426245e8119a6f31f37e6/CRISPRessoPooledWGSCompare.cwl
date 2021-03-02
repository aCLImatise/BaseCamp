class: CommandLineTool
id: CRISPRessoPooledWGSCompare.cwl
inputs:
- id: in_comparison
  doc: "two CRISPRessoPooled or CRISPRessoWGS analyses-\n_         ____________________________________\
    \           _\n'  )      | __  __  __     __ __        __  __ |         '  )\n\
    .-'       ||__)/  \\/  \\|  |_ |  \\ /|  |/ _ (_  |         .-'\n(____      ||\
    \   \\__/\\__/|__|__|__// |/\\|\\__)__) |        (____"
  type: string?
  inputBinding:
    prefix: -Comparison
- id: in_name
  doc: 'Output name (default: )'
  type: string?
  inputBinding:
    prefix: --name
- id: in_sample_one_name
  doc: 'Sample 1 name (default: Sample_1)'
  type: long?
  inputBinding:
    prefix: --sample_1_name
- id: in_sample_two_name
  doc: 'Sample 2 name (default: Sample_2)'
  type: long?
  inputBinding:
    prefix: --sample_2_name
- id: in_output_folder
  doc: "Number of processes to use for CRISPResso comparison\n(default: 1)"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_save_also_png
  doc: "Save also .png images additionally to .pdf files\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --save_also_png
- id: in_debug
  doc: 'Show debug messages (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_cris_presso_pooled_wgs_output_folder_two
  doc: "Second output folder with CRISPRessoPooled or\nCRISPRessoWGS analysis"
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Number of processes to use for CRISPResso comparison\n(default: 1)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispresso2:2.0.45--py27h3dcb392_0
cwlVersion: v1.1
baseCommand:
- CRISPRessoPooledWGSCompare
