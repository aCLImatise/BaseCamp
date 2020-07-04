class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tsvToVcf.pl.cwl
inputs:
- id: directory_containing_files
  doc: directory containing vcf files from freebayes
  type: string
  inputBinding:
    prefix: -v
- id: directory_new_vcf
  doc: directory the new vcf files will be output to
  type: string
  inputBinding:
    prefix: -d
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- tsvToVcf.pl
