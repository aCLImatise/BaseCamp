class: CommandLineTool
id: knock_knock_build_indices.cwl
inputs:
- id: in_num_threads
  doc: "number of threads to use for index building\n"
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_project_directory
  doc: "the base directory to store input data, reference\nannotations, and analysis\
    \ output for a project"
  type: string
  inputBinding:
    position: 0
- id: in_genome_name
  doc: name of genome to download
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- build-indices
