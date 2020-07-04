class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/unionBedGraphs.cwl
inputs:
- id: header
  doc: Print a header line. (chrom/start/end + names of each file).
  type: boolean
  inputBinding:
    prefix: -header
- id: names
  doc: A list of names (one/file) to describe each file in -i. These names will be
    printed in the header line.
  type: boolean
  inputBinding:
    prefix: -names
- id: use_genome_file
  doc: Use genome file to calculate empty regions. - STRING.
  type: boolean
  inputBinding:
    prefix: -g
- id: empty
  doc: Report empty regions (i.e., start/end intervals w/o values in all files). -
    Requires the '-g FILE' parameter.
  type: boolean
  inputBinding:
    prefix: -empty
- id: filler
  doc: Use TEXT when representing intervals having no value. - Default is '0', but
    you can use 'N/A' or any text.
  type: string
  inputBinding:
    prefix: -filler
- id: examples
  doc: Show detailed usage examples.
  type: boolean
  inputBinding:
    prefix: -examples
- id: i
  doc: ''
  type: File[]
  inputBinding:
    prefix: -i
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: union_bed_g
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- unionBedGraphs
