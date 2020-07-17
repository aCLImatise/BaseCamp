class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/knock_knock_build_indices.cwl
inputs:
- id: num_threads
  doc: number of threads to use for index building
  type: string
  inputBinding:
    prefix: --num-threads
- id: project_directory
  doc: the base directory to store input data, reference annotations, and analysis
    output for a project
  type: string
  inputBinding:
    position: 0
- id: genome_name
  doc: name of genome to download
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- build-indices
