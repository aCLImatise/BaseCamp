class: CommandLineTool
id: uropa.cwl
inputs:
- id: in_bed
  doc: Filename of .bed-file to annotate
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_gtf
  doc: Filename of .gtf-file with features
  type: boolean?
  inputBinding:
    prefix: --gtf
- id: in_feature
  doc: '[ [ ...]]              Feature for annotation'
  type: boolean?
  inputBinding:
    prefix: --feature
- id: in_feature_anchor
  doc: '[ [ ...]]       Specific feature anchor to annotate to'
  type: boolean?
  inputBinding:
    prefix: --feature-anchor
- id: in_distance
  doc: "[ [ ...]]             Maximum permitted distance from feature (1 or 2\narguments)"
  type: boolean?
  inputBinding:
    prefix: --distance
- id: in_strand
  doc: Desired strand of annotated feature relative to peak
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_relative_location
  doc: '[ [ ...]]    Peak location relative to feature location'
  type: boolean?
  inputBinding:
    prefix: --relative-location
- id: in_internals
  doc: "Set minimum overlap fraction for internal feature\nannotations. 0 equates\
    \ to internals=False and 1 equates\nto internals=True. Default is False."
  type: boolean?
  inputBinding:
    prefix: --internals
- id: in_filter_attribute
  doc: Filter on 9th column of GTF
  type: boolean?
  inputBinding:
    prefix: --filter-attribute
- id: in_attribute_values
  doc: '[ [ ...]]     Value(s) of attribute corresponding to --filter-'
  type: boolean?
  inputBinding:
    prefix: --attribute-values
- id: in_input
  doc: "Filename of configuration file (keys in this file\noverwrite command-line\
    \ arguments about query)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_prefix
  doc: "Prefix for result file names (defaults to basename of\n.bed-file)"
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_outdir
  doc: "Output directory for output files (default: current\ndir)"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_output_by_query
  doc: Additionally create output files for each named query
  type: boolean?
  inputBinding:
    prefix: --output-by-query
- id: in_log
  doc: "Log file name for messages and warnings (default: log\nis written to stdout)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_debug
  doc: Print verbose messages (for debugging)
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_chunk
  doc: "Number of lines per chunk for multiprocessing (default:\n1000)"
  type: boolean?
  inputBinding:
    prefix: --chunk
- id: in_attribute
  doc: '--show-attributes [ [ ...]]      A list of attributes to show in output (default:
    all)'
  type: string
  inputBinding:
    position: 0
- id: in_seperately
  doc: -s, --summary                    Create additional visualisation of results
    in graphical
  type: string
  inputBinding:
    position: 0
- id: in_format
  doc: '-t n, --threads n                Multiprocessed run: n = number of threads
    to run'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory for output files (default: current\ndir)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/uropa:4.0.0--py_0
cwlVersion: v1.1
baseCommand:
- uropa
