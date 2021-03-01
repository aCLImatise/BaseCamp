class: CommandLineTool
id: anvi_init_bam.cwl
inputs:
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast. (default: 1)"
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_bam_file_analyze
  doc: BAM file to analyze
  type: string
  inputBinding:
    position: 0
- id: in_raw_bam_file
  doc: '🍕 Can provide: '
  type: File
  inputBinding:
    position: 0
- id: in__more_anviinitbam
  doc: '🍺 More on `anvi-init-bam`:'
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-init-bam
