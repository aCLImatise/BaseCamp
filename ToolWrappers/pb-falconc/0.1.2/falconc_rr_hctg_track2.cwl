class: CommandLineTool
id: falconc_rr_hctg_track2.cwl
inputs:
- id: in_help_syntax
  doc: "advanced:prepen\nd,plurals,.."
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_test
  doc: bool    false                                        set test
  type: boolean?
  inputBinding:
    prefix: --test
- id: in__readtocontigmap_string
  doc: =, --read-to-contig-map=  string  "./4-quiver/track_reads/read_to_contig_map"  setread_to_cont
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__output_output
  doc: =, --output=              string  "./4-quiver/track-reads/rawread_to_contigs"  set
    output
  type: boolean?
  inputBinding:
    prefix: -o
- id: in__bestn_bestn
  doc: =, --bestn=               int     40                                           set
    bestn
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__ncore_int
  doc: =, --n-core=              int     0                                            set
    n_core
  type: boolean?
  inputBinding:
    prefix: -n
- id: in__string_set
  doc: =         string  ""                                           set
  type: boolean?
  inputBinding:
    prefix: --phased-read-file
- id: in_minlen_set_minlen
  doc: =, --min-len=             int     2500                                         set
    min_len
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_stream
  doc: bool    false                                        set stream
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: bool    false                                        set debug
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: bool    false                                        set silent
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_cli_gen_erated
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in_ig_map
  doc: -p=, --partials-fn=         string  "./4-quiver/track-reads/partials.json"       set
    partials_fn
  type: string
  inputBinding:
    position: 1
- id: in__rawreadids_string
  doc: --rawread-ids=              string  ""                                           set
    rawread_ids
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- rr-hctg-track2
