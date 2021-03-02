class: CommandLineTool
id: falconc_rr_hctg_track1.cwl
inputs:
- id: in_help_syntax
  doc: "advanced:\nprepend,plurals,.."
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_test
  doc: bool    false                                                           set
    test
  type: boolean?
  inputBinding:
    prefix: --test
- id: in__phasedreadfile_string
  doc: =, --phased-read-file=    string  "./3-unzip/all_phased_reads"                                    set
  type: boolean?
  inputBinding:
    prefix: -p
- id: in__bestn_bestn
  doc: =, --bestn=               int     40                                                              set
    bestn
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__ncore_int
  doc: =, --n-core=              int     0                                                               set
    n_core
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_minlen_int_set
  doc: =, --min-len=             int     2500                                                            set
    min_len
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__output_output
  doc: =, --output=              string  "./2-asm-falcon/read_maps/dump_rawread_ids/rawread_to_contigs"  set
    output
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_stream
  doc: bool    false                                                           set
    stream
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: bool    false                                                           set
    debug
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: bool    false                                                           set
    silent
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_cli_gen_erated
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in_phased_read_file
  doc: -r=, --read-to-contig-map=  string  "./4-quiver/read_maps/read_to_contig_map"                       set
  type: string
  inputBinding:
    position: 1
- id: in_read_to_contig_map
  doc: --rawread-ids=              string  "./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids"         set
    rawread_ids
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- rr-hctg-track1
