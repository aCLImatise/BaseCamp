class: CommandLineTool
id: tomtom.cwl
inputs:
- id: in_name_directory_not
  doc: "Name of directory for output files;\nwill not replace existing directory"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_oc
  doc: "Name of directory for output files;\nwill replace existing directory"
  type: Directory?
  inputBinding:
    prefix: -oc
- id: in_x_alph
  doc: "Convert the alphabet of the target motif databases\nto the alphabet of the\
    \ query motif database\nassuming the core symbols of the target motif\nalphabet\
    \ are a subset; default: reject differences"
  type: boolean?
  inputBinding:
    prefix: -xalph
- id: in_b_file
  doc: "Name of background file;\ndefault: use the background from the query\nmotif\
    \ database"
  type: File?
  inputBinding:
    prefix: -bfile
- id: in_motif_pseudo
  doc: "Apply the pseudocount to the query and target motifs;\ndefault: apply a pseudocount\
    \ of 0.1"
  type: double?
  inputBinding:
    prefix: -motif-pseudo
- id: in_use_motifs_specified
  doc: "Use only query motifs with a specified id;\nmay be repeated"
  type: string?
  inputBinding:
    prefix: -m
- id: in_mi
  doc: "Use only query motifs with a specifed index;\nmay be repeated"
  type: string?
  inputBinding:
    prefix: -mi
- id: in_thresh
  doc: 'Significance threshold; default: 0.5'
  type: double?
  inputBinding:
    prefix: -thresh
- id: in_evalue
  doc: 'Use E-value threshold; default: q-value'
  type: boolean?
  inputBinding:
    prefix: -evalue
- id: in_dist
  doc: "|ed|kullback|pearson|sandelin|blic1|blic5|llr1|llr5\nDistance metric for scoring\
    \ alignments;\ndefault: pearson"
  type: long?
  inputBinding:
    prefix: -dist
- id: in_internal
  doc: "Only allow internal alignments;\ndefault: allow overhangs"
  type: boolean?
  inputBinding:
    prefix: -internal
- id: in_min_overlap
  doc: "Minimum overlap between query and target;\ndefault: 1"
  type: long?
  inputBinding:
    prefix: -min-overlap
- id: in_norc
  doc: Do not score the reverse complements of targets
  type: boolean?
  inputBinding:
    prefix: -norc
- id: in_incomplete_scores
  doc: "Ignore unaligned columns in computing scores\ndefault: use complete set of\
    \ columns"
  type: boolean?
  inputBinding:
    prefix: -incomplete-scores
- id: in_text
  doc: Output in text format (default is HTML)
  type: boolean?
  inputBinding:
    prefix: -text
- id: in_png
  doc: "Create PNG logos; default: don't create PNG logos"
  type: boolean?
  inputBinding:
    prefix: -png
- id: in_eps
  doc: "Create EPS logos; default: don't create EPS logos"
  type: boolean?
  inputBinding:
    prefix: -eps
- id: in_no_ssc
  doc: "Don't apply small-sample correction to logos;\ndefault: use small-sample correction"
  type: boolean?
  inputBinding:
    prefix: -no-ssc
- id: in_time
  doc: "quit before <time> CPU seconds consumed\n<time> must be > 0. The Default is\
    \ unlimited CPU time"
  type: long?
  inputBinding:
    prefix: -time
- id: in_verbosity
  doc: "[1|2|3|4]\nSet the verbosity of the program; default: 2 (normal)"
  type: boolean?
  inputBinding:
    prefix: -verbosity
- id: in_version
  doc: Print the version and exit
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_query_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_target_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_directory_not
  doc: "Name of directory for output files;\nwill not replace existing directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_name_directory_not)
- id: out_oc
  doc: "Name of directory for output files;\nwill replace existing directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_oc)
hints: []
cwlVersion: v1.1
baseCommand:
- tomtom
