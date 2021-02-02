class: CommandLineTool
id: falconc_bam_filter_clipped.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__outputcountfn_string
  doc: "=, --output-count-fn=  string  REQUIRED  file reporting the number of reads\n\
    post filtering"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_output_fn
  doc: "=             string  REQUIRED  Bam or Sam filename (based on its\nextension)"
  type: boolean
  inputBinding:
    prefix: --output-fn
- id: in__inputfn_string
  doc: "=, --input-fn=         string  REQUIRED  Bam or Sam filename (based on its\n\
    extension), or '-'"
  type: boolean
  inputBinding:
    prefix: -i
- id: in__maxclipping_int
  doc: "=, --max-clipping=     int     100       Maximum clipping on left or right\n\
    of query, in basepairs"
  type: boolean
  inputBinding:
    prefix: -m
- id: in__endmargin_int
  doc: =, --end-margin=       int     25        Maximum margin on contig ends, in
  type: boolean
  inputBinding:
    prefix: -e
- id: in_base_pairs
  doc: -F=, --Flags-exclude=    string  "0"       Integer (0x ok) of flags to
  type: string
  inputBinding:
    position: 0
- id: in_filters
  doc: -v, --verbose            bool    false     Show each skipped alignment, and
    a
  type: string
  inputBinding:
    position: 0
- id: in_count_dot
  doc: -t, --tags-enrich        bool    false     Also enrich the tags. (See
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- bam-filter-clipped
