class: CommandLineTool
id: protgraph.cwl
inputs:
- id: in_num_of_entries
  doc: "Number of entries across all files (summed). if given,\nit will an estimation\
    \ of the runtime"
  type: long?
  inputBinding:
    prefix: --num_of_entries
- id: in_exclude_accessions
  doc: "A csv file only containing accessions in the first row\nwhich should be excluded\
    \ for processsing. Setting this\nvalue may reduce the reading performance and\
    \ therefore\nthe throughput performance overall."
  type: File?
  inputBinding:
    prefix: --exclude_accessions
- id: in_num_of_processes
  doc: "The number of processes used to process entries. Each\nprocess can process\
    \ an entry individually. The default\nvalue is 'cores - 1', since one process\
    \ is reserved\nfor reading entries"
  type: long?
  inputBinding:
    prefix: --num_of_processes
- id: in_output_csv
  doc: "Set the output file, which will contain information\nabout the protein graphs\
    \ (in csv) NOTE: It will write\nto 'protein_graph_statistics.csv' and overwrite\
    \ if\nsuch a file exists. Default is set to the current\nworking directory"
  type: File?
  inputBinding:
    prefix: --output_csv
- id: in_help_all
  doc: Show the complete help message for all possible
  type: boolean?
  inputBinding:
    prefix: --help_all
- id: in_files
  doc: "Files containing the Swissprot/EMBL-Entries (either in\n.dat or .txt)"
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: --help_graph_generation
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_csv
  doc: "Set the output file, which will contain information\nabout the protein graphs\
    \ (in csv) NOTE: It will write\nto 'protein_graph_statistics.csv' and overwrite\
    \ if\nsuch a file exists. Default is set to the current\nworking directory"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_csv)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/protgraph:0.1.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- protgraph
