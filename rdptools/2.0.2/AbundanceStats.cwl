class: CommandLineTool
id: AbundanceStats.cwl
inputs:
- id: jaccard
  doc: Compute jaccard abundance stats
  type: boolean
  inputBinding:
    prefix: --jaccard
- id: lower_cut_off
  doc: Lowest cutoff in the cluster file to compute stats for
  type: string
  inputBinding:
    prefix: --lower-cutoff
- id: result_dir
  doc: Directory to put the result files in (default=.)
  type: string
  inputBinding:
    prefix: --result-dir
- id: r_location
  doc: Triggers the R plotter subsystem, provide the path to the R command
  type: string
  inputBinding:
    prefix: --R-location
- id: sorensen
  doc: Compute sorensen abundance stats
  type: boolean
  inputBinding:
    prefix: --sorensen
- id: otu_table
  doc: input file is an otu table, not rdp cluster file
  type: boolean
  inputBinding:
    prefix: --otu-table
- id: upper_cut_off
  doc: Highest cutoff in the cluster file to compute stats for
  type: string
  inputBinding:
    prefix: --upper-cutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- AbundanceStats
