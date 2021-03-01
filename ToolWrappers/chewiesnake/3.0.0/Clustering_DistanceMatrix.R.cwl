class: CommandLineTool
id: Clustering_DistanceMatrix.R.cwl
inputs:
- id: in_input
  doc: Distance matrix (tsv) Input file (required)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_directory
  doc: Output directory (optional, default is the same as the input directory).
  type: Directory?
  inputBinding:
    prefix: --outputdirectory
- id: in_cut_off_values
  doc: 'A comma separated set of cutoff values (Default: 5,10,20,50,100,200,1000)'
  type: long?
  inputBinding:
    prefix: --cutoff_values
- id: in_header
  doc: TRUE or FALSE (the default). When true, the first line in the distance matrix
    is the header
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_tsv
  doc: TRUE or FALSE (the default). When true, the distance matrix is tab seperated
    (else space seperated)
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_force
  doc: "TRUE or FALSE (the default). When true, existing output files will be overwritten\n"
  type: boolean?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory (optional, default is the same as the input directory).
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewiesnake:3.0.0--1
cwlVersion: v1.1
baseCommand:
- Clustering_DistanceMatrix.R
