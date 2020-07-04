class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mast.cwl
inputs:
- id: b_file
  doc: read background frequencies from <bf>
  type: string
  inputBinding:
    prefix: -bfile
- id: db_list
  doc: the file specified as database contains a list of databases
  type: boolean
  inputBinding:
    prefix: -dblist
- id: directory_to_output_mast_results
  doc: directory to output mast results
  type: string
  inputBinding:
    prefix: -o
- id: oc
  doc: directory to output mast results with overwriting allowed
  type: string
  inputBinding:
    prefix: -oc
- id: hit_list
  doc: print only a list of non-overlapping hits to stdout
  type: boolean
  inputBinding:
    prefix: -hit_list
- id: rem_corr
  doc: remove highly correlated motifs from query
  type: boolean
  inputBinding:
    prefix: -remcorr
- id: use_only_motifs_named
  doc: use only motif(s) named <id> (overrides -mev); can be repeated
  type: string
  inputBinding:
    prefix: -m
- id: mi
  doc: use only motif(s) numbered <m> (overrides -mev); can be repeated
  type: string
  inputBinding:
    prefix: -mi
- id: only_use_motifs
  doc: only use the first <count> motifs or all motifs when <count> is zero
  type: string
  inputBinding:
    prefix: -c
- id: mev
  doc: use only motifs with E-values less than <mev>
  type: string
  inputBinding:
    prefix: -mev
- id: diag
  doc: nominal order and spacing of motifs
  type: string
  inputBinding:
    prefix: -diag
- id: norc
  doc: do not score reverse complement DNA strand
  type: boolean
  inputBinding:
    prefix: -norc
- id: sep
  doc: score reverse complement DNA strand as a separate sequence
  type: boolean
  inputBinding:
    prefix: -sep
- id: dna
  doc: translate DNA sequences to protein
  type: boolean
  inputBinding:
    prefix: -dna
- id: comp
  doc: adjust p-values and E-values for sequence composition
  type: boolean
  inputBinding:
    prefix: -comp
- id: ev
  doc: 'print results for sequences with E-value < <ev>; default: 0.0001'
  type: string
  inputBinding:
    prefix: -ev
- id: mt
  doc: 'show motif matches with p-value < mt; default: 6.91595e-310'
  type: string
  inputBinding:
    prefix: -mt
- id: show_weak_matches
  doc: show weak matches (mt < p-value < mt*10) in angle brackets
  type: boolean
  inputBinding:
    prefix: -w
- id: best
  doc: include only the best motif in diagrams; hit_list mode only
  type: boolean
  inputBinding:
    prefix: -best
- id: seq_p
  doc: 'use SEQUENCE p-values for motif thresholds default: use POSITION p-values'
  type: boolean
  inputBinding:
    prefix: -seqp
- id: mv
  doc: in results use <mf> as motif file name
  type: string
  inputBinding:
    prefix: -mv
- id: df
  doc: in results use <df> as database name; ignored when option -dblist is specified
  type: string
  inputBinding:
    prefix: -df
- id: dl
  doc: in results use <dl> as link to search sequence names; ignored when -dblist
    specified
  type: string
  inputBinding:
    prefix: -dl
- id: mins_eqs
  doc: lower bound on number of sequences in db
  type: string
  inputBinding:
    prefix: -minseqs
- id: no_status
  doc: do not print progress report
  type: boolean
  inputBinding:
    prefix: -nostatus
- id: no_text
  doc: do not generate text output
  type: boolean
  inputBinding:
    prefix: -notext
- id: no_html
  doc: do not generate html output
  type: boolean
  inputBinding:
    prefix: -nohtml
- id: version
  doc: print the version and exit
  type: boolean
  inputBinding:
    prefix: -version
- id: motif_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mast
