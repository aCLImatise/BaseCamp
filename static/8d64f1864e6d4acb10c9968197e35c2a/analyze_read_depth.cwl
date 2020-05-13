class: CommandLineTool
id: analyze_read_depth.cwl
inputs:
- id: verbose
  doc: a verbose output
  type: string
  inputBinding:
    prefix: --verbose
- id: x
  doc: Flag regions val x times the global average depth
  type: string
  inputBinding:
    prefix: -x
- id: c
  doc: Cluster regions within <dist> bp
  type: string
  inputBinding:
    prefix: -c
- id: i
  doc: Only use list of contigs iids in file for computing average
  type: File
  inputBinding:
    prefix: -I
- id: i
  doc: Print contig IIDs instead of EIDs
  type: boolean
  inputBinding:
    prefix: -i
- id: d
  doc: 'Just compute the depth. This returns a line with 4 values: the minimum contig
    length considered, number of contigs sum of contig lengths and the average contig
    depth'
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: Only use contigs >= len for computing average
  type: string
  inputBinding:
    prefix: -l
- id: r
  doc: Print the depth for each contig
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: Use ungapped length for reports
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze-read-depth
