class: CommandLineTool
id: TOBIAS_FormatMotifs.cwl
inputs:
- id: in_input
  doc: '[ [ ...]]  One or more input motif files (required)'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "If task == join, output is the joined output file; if task == split,\noutput\
    \ is a directory (required)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_format
  doc: 'Desired motif output format (pfm, jaspar, meme) (default: "jaspar")'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_task
  doc: 'Which task to perform on motif files (join/split) (default: join)'
  type: boolean?
  inputBinding:
    prefix: --task
- id: in_filter
  doc: "File containing list of motif names/ids to filter on. Only motifs\nfitting\
    \ entries in filter will be output."
  type: File?
  inputBinding:
    prefix: --filter
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "If task == join, output is the joined output file; if task == split,\noutput\
    \ is a directory (required)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_filter
  doc: "File containing list of motif names/ids to filter on. Only motifs\nfitting\
    \ entries in filter will be output."
  type: File?
  outputBinding:
    glob: $(inputs.in_filter)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- FormatMotifs
