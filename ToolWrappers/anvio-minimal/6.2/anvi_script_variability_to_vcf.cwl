class: CommandLineTool
id: anvi_script_variability_to_vcf.cwl
inputs:
- id: in_input
  doc: "Filepath to the SNV table. This is the output from the\nanvi-gen-variability-profile\
    \ program with the\nnucleotide engine (which is the default engine)."
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_file
  doc: "File path to store results.\n"
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: "Filepath to the SNV table. This is the output from the\nanvi-gen-variability-profile\
    \ program with the\nnucleotide engine (which is the default engine)."
  type: File?
  outputBinding:
    glob: $(inputs.in_input)
- id: out_output_file
  doc: "File path to store results.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-script-variability-to-vcf
