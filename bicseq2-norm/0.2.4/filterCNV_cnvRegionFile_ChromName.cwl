class: CommandLineTool
id: filterCNV_cnvRegionFile_ChromName.cwl
inputs:
- id: read_count_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- filterCNV
- cnvRegionFile
- ChromName
