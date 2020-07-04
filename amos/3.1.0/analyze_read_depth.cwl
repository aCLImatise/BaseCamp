class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/analyze_read_depth.cwl
inputs:
- id: verbose
  doc: a verbose output
  type: string
  inputBinding:
    prefix: --verbose
- id: flag_regions_val
  doc: Flag regions val x times the global average depth
  type: string
  inputBinding:
    prefix: -x
- id: cluster_regions_dist
  doc: Cluster regions within <dist> bp
  type: string
  inputBinding:
    prefix: -c
- id: only_use_list
  doc: Only use list of contigs iids in file for computing average
  type: File
  inputBinding:
    prefix: -I
- id: print_contig_iids
  doc: Print contig IIDs instead of EIDs
  type: boolean
  inputBinding:
    prefix: -i
- id: just_compute_depth
  doc: 'Just compute the depth. This returns a line with 4 values: the minimum contig
    length considered, number of contigs sum of contig lengths and the average contig
    depth'
  type: boolean
  inputBinding:
    prefix: -d
- id: only_use_len
  doc: Only use contigs >= len for computing average
  type: string
  inputBinding:
    prefix: -l
- id: print_depth_contig
  doc: Print the depth for each contig
  type: boolean
  inputBinding:
    prefix: -r
- id: use_ungapped_length
  doc: Use ungapped length for reports
  type: boolean
  inputBinding:
    prefix: -u
- id: bank
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze-read-depth
