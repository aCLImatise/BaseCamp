class: CommandLineTool
id: analyze_read_depth.cwl
inputs:
- id: in_verbose
  doc: a verbose output
  type: string
  inputBinding:
    prefix: --verbose
- id: in_flag_regions_times
  doc: Flag regions val x times the global average depth
  type: string
  inputBinding:
    prefix: -x
- id: in_cluster_regions_dist
  doc: Cluster regions within <dist> bp
  type: string
  inputBinding:
    prefix: -c
- id: in_only_use_list
  doc: Only use list of contigs iids in file for computing average
  type: File
  inputBinding:
    prefix: -I
- id: in_print_contig_iids
  doc: Print contig IIDs instead of EIDs
  type: boolean
  inputBinding:
    prefix: -i
- id: in_just_compute_depth
  doc: "Just compute the depth. This returns a line with 4 values:\nthe minimum contig\
    \ length considered, number of contigs\nsum of contig lengths and the average\
    \ contig depth"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_only_use_len
  doc: Only use contigs >= len for computing average
  type: string
  inputBinding:
    prefix: -l
- id: in_print_depth_contig
  doc: Print the depth for each contig
  type: boolean
  inputBinding:
    prefix: -r
- id: in_use_ungapped_length
  doc: Use ungapped length for reports
  type: boolean
  inputBinding:
    prefix: -u
- id: in_bank
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- analyze-read-depth
