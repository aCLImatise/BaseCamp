class: CommandLineTool
id: f5c_index.cwl
inputs:
- id: in_path_directory_containing
  doc: path to the directory containing fast5 files. This option can be given multiple
    times.
  type: File?
  inputBinding:
    prefix: -d
- id: in_sequencing_summary_file
  doc: the sequencing summary file
  type: File?
  inputBinding:
    prefix: -s
- id: in_file_containing_paths
  doc: file containing the paths to the sequencing summary files (one per line)
  type: File?
  inputBinding:
    prefix: -f
- id: in_number_threads_used
  doc: number of threads used for bgzf compression (makes indexing faster)
  type: long?
  inputBinding:
    prefix: -t
- id: in_iop
  doc: number of I/O processes to read fast5 files (makes indexing faster)
  type: long?
  inputBinding:
    prefix: --iop
- id: in_verbose
  doc: verbosity level
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_reads_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/f5c:0.6--h8b6279f_0
cwlVersion: v1.1
baseCommand:
- f5c
- index
