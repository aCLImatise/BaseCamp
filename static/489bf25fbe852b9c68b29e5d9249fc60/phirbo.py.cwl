class: CommandLineTool
id: phirbo.py.cwl
inputs:
- id: in_rbo_parameter_range
  doc: "RBO parameter in range (0, 1) determines the degree of top-\nweightedness\
    \ of RBO measure. High p implies strong emphasis\non top ranked items [default\
    \ = 0.75]"
  type: double?
  inputBinding:
    prefix: --p
- id: in_truncate_ranked_lists
  doc: "Truncate all ranked lists to the first `k` rankings to\ncalculate RBO. To\
    \ disable the truncation use --k 0 [default\n= 30]"
  type: long?
  inputBinding:
    prefix: --k
- id: in_number_threads_cpus
  doc: Number of threads (CPUs) [default = 8]
  type: long?
  inputBinding:
    prefix: --t
- id: in_virus_dir
  doc: Input directory w/ ranked lists for viruses
  type: string
  inputBinding:
    position: 0
- id: in_host_dir
  doc: Input directory w/ ranked lists for hosts
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: Output file name
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phirbo:1.0--0
cwlVersion: v1.1
baseCommand:
- phirbo.py
