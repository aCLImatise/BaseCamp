class: CommandLineTool
id: mast.cwl
inputs:
- id: in_b_file
  doc: read background frequencies from <bf>
  type: string?
  inputBinding:
    prefix: -bfile
- id: in_db_list
  doc: the file specified as database contains a list of databases
  type: boolean?
  inputBinding:
    prefix: -dblist
- id: in_directory_to_output_mast_results
  doc: directory to output mast results
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_oc
  doc: directory to output mast results with overwriting allowed
  type: Directory?
  inputBinding:
    prefix: -oc
- id: in_hit_list
  doc: print only a list of non-overlapping hits to stdout
  type: boolean?
  inputBinding:
    prefix: -hit_list
- id: in_rem_corr
  doc: remove highly correlated motifs from query
  type: boolean?
  inputBinding:
    prefix: -remcorr
- id: in_use_only_motifs_named
  doc: "use only motif(s) named <id> (overrides -mev);\ncan be repeated"
  type: string?
  inputBinding:
    prefix: -m
- id: in_mi
  doc: "use only motif(s) numbered <m> (overrides -mev);\ncan be repeated"
  type: string?
  inputBinding:
    prefix: -mi
- id: in_only_use_motifs
  doc: "only use the first <count> motifs or all motifs\nwhen <count> is zero"
  type: string?
  inputBinding:
    prefix: -c
- id: in_mev
  doc: "use only motifs with E-values (or p-values) less than\nor equal to <thresh>"
  type: string?
  inputBinding:
    prefix: -mev
- id: in_diag
  doc: nominal order and spacing of motifs
  type: string?
  inputBinding:
    prefix: -diag
- id: in_norc
  doc: do not score reverse complement DNA strand
  type: boolean?
  inputBinding:
    prefix: -norc
- id: in_sep
  doc: score reverse complement DNA strand as a separate sequence
  type: boolean?
  inputBinding:
    prefix: -sep
- id: in_dna
  doc: translate DNA sequences to protein
  type: boolean?
  inputBinding:
    prefix: -dna
- id: in_comp
  doc: adjust p-values and E-values for sequence composition
  type: boolean?
  inputBinding:
    prefix: -comp
- id: in_ev
  doc: "print results for sequences with E-value < <ev>;\ndefault: 0.0001"
  type: double?
  inputBinding:
    prefix: -ev
- id: in_mt
  doc: 'show motif matches with p-value < mt; default: 9.53282e-130'
  type: double?
  inputBinding:
    prefix: -mt
- id: in_show_weak_matches
  doc: show weak matches (mt < p-value < mt*10) in angle brackets
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_best
  doc: "include only the best motif in diagrams;\nhit_list mode only"
  type: boolean?
  inputBinding:
    prefix: -best
- id: in_seq_p
  doc: "use SEQUENCE p-values for motif thresholds\ndefault: use POSITION p-values"
  type: boolean?
  inputBinding:
    prefix: -seqp
- id: in_mv
  doc: in results use <mf> as motif file name
  type: File?
  inputBinding:
    prefix: -mv
- id: in_df
  doc: "in results use <df> as database name; ignored when\noption -dblist is specified"
  type: string?
  inputBinding:
    prefix: -df
- id: in_dl
  doc: "in results use <dl> as link to search sequence names;\nignored when -dblist\
    \ specified"
  type: string?
  inputBinding:
    prefix: -dl
- id: in_mins_eqs
  doc: lower bound on number of sequences in db
  type: long?
  inputBinding:
    prefix: -minseqs
- id: in_no_status
  doc: do not print progress report
  type: boolean?
  inputBinding:
    prefix: -nostatus
- id: in_no_text
  doc: do not generate text output
  type: boolean?
  inputBinding:
    prefix: -notext
- id: in_no_html
  doc: do not generate html output
  type: boolean?
  inputBinding:
    prefix: -nohtml
- id: in_version
  doc: print the version and exit
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output_mast_results
  doc: directory to output mast results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output_mast_results)
- id: out_oc
  doc: directory to output mast results with overwriting allowed
  type: Directory?
  outputBinding:
    glob: $(inputs.in_oc)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- mast
