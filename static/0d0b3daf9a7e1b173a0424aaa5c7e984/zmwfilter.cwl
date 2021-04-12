class: CommandLineTool
id: zmwfilter.cwl
inputs:
- id: in_include
  doc: "STR   Include ZMWs in output subreads.bam file. This can be either a comma-separated\
    \ list of IDs or a\nfilename containing one ID per line."
  type: File?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: "STR   Exclude ZMWs from output subreads.bam file. This can be either a comma-separated\
    \ list of IDs or\na filename containing one ID per line."
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_output_dot_bam
  doc: STR   Output subreads BAM
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_include
  doc: "STR   Include ZMWs in output subreads.bam file. This can be either a comma-separated\
    \ list of IDs or a\nfilename containing one ID per line."
  type: File?
  outputBinding:
    glob: $(inputs.in_include)
- id: out_exclude
  doc: "STR   Exclude ZMWs from output subreads.bam file. This can be either a comma-separated\
    \ list of IDs or\na filename containing one ID per line."
  type: File?
  outputBinding:
    glob: $(inputs.in_exclude)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/zmwfilter:1.0.0--0
cwlVersion: v1.1
baseCommand:
- zmwfilter
