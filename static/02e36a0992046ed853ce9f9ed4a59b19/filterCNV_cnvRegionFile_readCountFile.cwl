class: CommandLineTool
id: filterCNV_cnvRegionFile_readCountFile.cwl
inputs:
- id: chrom_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- filterCNV
- cnvRegionFile
- readCountFile
