class: CommandLineTool
id: tsvToVcf.pl.cwl
inputs:
- id: v
  doc: directory containing vcf files from freebayes
  type: string
  inputBinding:
    prefix: -v
- id: d
  doc: directory the new vcf files will be output to
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- tsvToVcf.pl
