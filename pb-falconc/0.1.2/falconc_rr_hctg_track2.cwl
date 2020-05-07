class: CommandLineTool
id: falconc_rr_hctg_track2.cwl
inputs:
- id: help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: test
  doc: bool    false                                        set test
  type: boolean
  inputBinding:
    prefix: --test
- id: r
  doc: =, --read-to-contig-map=  string  "./4-quiver/track_reads/read_to_contig_map"  set
    read_to_contig_map
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: =, --partials-fn=         string  "./4-quiver/track-reads/partials.json"       set
    partials_fn
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: =, --output=              string  "./4-quiver/track-reads/rawread_to_contigs"  set
    output
  type: boolean
  inputBinding:
    prefix: -o
- id: b
  doc: =, --bestn=               int     40                                           set
    bestn
  type: boolean
  inputBinding:
    prefix: -b
- id: n
  doc: =, --n-core=              int     0                                            set
    n_core
  type: boolean
  inputBinding:
    prefix: -n
- id: phased_read_file
  doc: =         string  ""                                           set phased_read_file
  type: boolean
  inputBinding:
    prefix: --phased-read-file
- id: raw_read_ids
  doc: =              string  ""                                           set rawread_ids
  type: boolean
  inputBinding:
    prefix: --rawread-ids
- id: m
  doc: =, --min-len=             int     2500                                         set
    min_len
  type: boolean
  inputBinding:
    prefix: -m
- id: stream
  doc: bool    false                                        set stream
  type: boolean
  inputBinding:
    prefix: --stream
- id: debug
  doc: bool    false                                        set debug
  type: boolean
  inputBinding:
    prefix: --debug
- id: silent
  doc: bool    false                                        set silent
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- falconc
- rr-hctg-track2
