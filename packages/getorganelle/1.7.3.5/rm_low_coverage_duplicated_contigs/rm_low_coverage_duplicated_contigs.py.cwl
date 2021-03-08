class: CommandLineTool
id: rm_low_coverage_duplicated_contigs.py.cwl
inputs:
- id: in_cov_t
  doc: "With ratio (coverage of query/coverage of subject)\nbelow which, the query\
    \ would be exposed to discarded.\nDefault: 0.12"
  type: double?
  inputBinding:
    prefix: --cov-t
- id: in_len_t
  doc: "With overlap (length of hit of query/ length of query)\nabove which, the query\
    \ would be exposed to discarded.\nDefault: 0.9"
  type: long?
  inputBinding:
    prefix: --len-t
- id: in_blur
  doc: Replace hit low-coverage bases with N.
  type: boolean?
  inputBinding:
    prefix: --blur
- id: in_keep_temp
  doc: Keep temp blast files.
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_which_blast
  doc: "Assign the path to BLAST binary files if not added to\nthe path."
  type: File?
  inputBinding:
    prefix: --which-blast
- id: in_output_directory_default
  doc: 'Output directory. Default: along with the original'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_file
  doc: -t THREADS, --threads=THREADS
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_default
  doc: 'Output directory. Default: along with the original'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_default)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- rm_low_coverage_duplicated_contigs.py
