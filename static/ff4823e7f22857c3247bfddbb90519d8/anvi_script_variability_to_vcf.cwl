class: CommandLineTool
id: anvi_script_variability_to_vcf.cwl
inputs:
- id: in_input
  doc: "Filepath to the SNV table. This is the output from the\nanvi-gen-variability-profile\
    \ program with the\nnucleotide engine (which is the default engine).\n(default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_variability_profile_txt
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: '🍺 More on `anvi-script-variability-to-vcf`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: "Filepath to the SNV table. This is the output from the\nanvi-gen-variability-profile\
    \ program with the\nnucleotide engine (which is the default engine).\n(default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_input)
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-variability-to-vcf
