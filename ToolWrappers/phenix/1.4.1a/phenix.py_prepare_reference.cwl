class: CommandLineTool
id: phenix.py_prepare_reference.cwl
inputs:
- id: in_reference
  doc: Path to reference file to prepare.
  type: File
  inputBinding:
    prefix: --reference
- id: in_mapper
  doc: "Available mappers: ['bwa', 'bowtie2']"
  type: long
  inputBinding:
    prefix: --mapper
- id: in_variant
  doc: "Available variants: ['mpileup', 'gatk']"
  type: string
  inputBinding:
    prefix: --variant
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phenix.py
- prepare_reference
