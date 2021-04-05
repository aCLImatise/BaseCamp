class: CommandLineTool
id: SmartMapRNAPrep.cwl
inputs:
- id: in_basename_bowtie_index
  doc: to basename of Bowtie2 index for alignment
  type: File?
  inputBinding:
    prefix: -x
- id: in_prefix_prepended_output
  doc: prefix prepended to the output files
  type: string?
  inputBinding:
    prefix: -o
- id: in_one
  doc: file for read mate 1 (can be gzipped)
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: file for read mate 2 (can be gzipped)
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_cpu_threads_used
  doc: 'of CPU threads to be used for multithreaded alignment (default: 1)'
  type: long?
  inputBinding:
    prefix: -p
- id: in_number_alignments_reported
  doc: 'number of alignments reported (default: 51)'
  type: long?
  inputBinding:
    prefix: -k
- id: in_removed_read_names
  doc: to be removed from read names
  type: string?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smartmap:1.0.0--he513fc3_0
cwlVersion: v1.1
baseCommand:
- SmartMapRNAPrep
