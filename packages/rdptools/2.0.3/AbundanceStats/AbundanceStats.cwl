class: CommandLineTool
id: AbundanceStats.cwl
inputs:
- id: in_jaccard
  doc: Compute jaccard abundance stats
  type: boolean
  inputBinding:
    prefix: --jaccard
- id: in_lower_cut_off
  doc: "Lowest cutoff in the cluster file to compute\nstats for"
  type: File
  inputBinding:
    prefix: --lower-cutoff
- id: in_result_dir
  doc: "Directory to put the result files in\n(default=.)"
  type: Directory
  inputBinding:
    prefix: --result-dir
- id: in_r_location
  doc: "Triggers the R plotter subsystem, provide the\npath to the R command"
  type: File
  inputBinding:
    prefix: --R-location
- id: in_sorensen
  doc: Compute sorensen abundance stats
  type: boolean
  inputBinding:
    prefix: --sorensen
- id: in_otu_table
  doc: input file is an otu table, not rdp cluster
  type: boolean
  inputBinding:
    prefix: --otu-table
- id: in_file
  doc: -u,--upper-cutoff <arg>   Highest cutoff in the cluster file to compute
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AbundanceStats
