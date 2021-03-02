class: CommandLineTool
id: mpa.cwl
inputs:
- id: in_mpa_directory
  doc: "The path to the MPA installation folder. [Default:\n/usr/local/bin]"
  type: Directory?
  inputBinding:
    prefix: --mpa-directory
- id: in_logging_level
  doc: 'The logger level. [Default: INFO]'
  type: string?
  inputBinding:
    prefix: --logging-level
- id: in_input
  doc: "The vcf file to annotate (format: VCF). This vcf must\nbe annotate with annovar."
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "The output vcf file with annotation (format : VCF)\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output vcf file with annotation (format : VCF)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mpa
