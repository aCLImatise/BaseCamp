class: CommandLineTool
id: anvi_script_variability_to_vcf.cwl
inputs:
- id: input
  doc: Filepath to the SNV table. This is the output from the anvi-gen-variability-profile
    program with the nucleotide engine (which is the default engine).
  type: File
  inputBinding:
    prefix: --input
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-variability-to-vcf
