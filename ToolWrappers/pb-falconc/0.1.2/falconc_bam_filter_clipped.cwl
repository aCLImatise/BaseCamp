class: CommandLineTool
id: falconc_bam_filter_clipped.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_outputfn_string_required
  doc: "=, --output-fn=      string  REQUIRED  Bam or Sam filename (based on its\n\
    extension)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_inputfn_string_required
  doc: "=, --input-fn=       string  REQUIRED  Bam or Sam filename (based on its\n\
    extension), or '-'"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_maxclipping_int_maximum
  doc: "=, --max-clipping=   int     100       Maximum clipping on left or right of\n\
    query, in basepairs"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__endmargin_margin
  doc: =, --end-margin=     int     25        Maximum margin on contig ends, in
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_verbose
  doc: bool    false     Show each skipped alignment, and a
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_base_pairs
  doc: -F=, --Flags-exclude=  string  "0"       Integer (0x ok) of flags to exclude,
  type: string
  inputBinding:
    position: 0
- id: in_count_dot
  doc: -t, --tags-enrich      bool    false     Also enrich the tags. (See
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputfn_string_required
  doc: "=, --output-fn=      string  REQUIRED  Bam or Sam filename (based on its\n\
    extension)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outputfn_string_required)
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- bam-filter-clipped
