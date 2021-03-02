class: CommandLineTool
id: vcf_annotator.cwl
inputs:
- id: in_output
  doc: File to write VCF output to (Default STDOUT).
  type: File?
  inputBinding:
    prefix: --output
- id: in_vcf_file
  doc: VCF file of variants
  type: string
  inputBinding:
    position: 0
- id: in_genbank_file
  doc: GenBank file of the reference genome.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: File to write VCF output to (Default STDOUT).
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- vcf-annotator
