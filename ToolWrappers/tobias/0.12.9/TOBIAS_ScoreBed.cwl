class: CommandLineTool
id: TOBIAS_ScoreBed.cwl
inputs:
- id: in_math
  doc: be used to adjust scoring scheme.
  type: string?
  inputBinding:
    prefix: --math
- id: in_bed
  doc: Sites to score (.bed file)
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_bigwigs
  doc: '[ [ ...]]  Scores to assign to regions in .bed (.bw file(s))'
  type: boolean?
  inputBinding:
    prefix: --bigwigs
- id: in_output
  doc: "Path to output .bed-file (default: scored sites are written to\nstdout)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_subset
  doc: "Subset scoring to .bed regions and set all other sites to --null\nvalue (default:\
    \ all sites in input file will be scored)"
  type: boolean?
  inputBinding:
    prefix: --subset
- id: in_null
  doc: "If --subset is given, which score/label to add to non-scored\nregions (default:\
    \ 0)"
  type: boolean?
  inputBinding:
    prefix: --null
- id: in_position
  doc: 'Position in sites to score (start/mid/end/full) (default: full)'
  type: boolean?
  inputBinding:
    prefix: --position
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
  doc: "Path to output .bed-file (default: scored sites are written to\nstdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- ScoreBed
