class: CommandLineTool
id: ../../../tomtom.cwl
inputs:
- id: name_directory_not
  doc: Name of directory for output files; will not replace existing directory
  type: string
  inputBinding:
    prefix: -o
- id: oc
  doc: Name of directory for output files; will replace existing directory
  type: string
  inputBinding:
    prefix: -oc
- id: x_alph
  doc: 'Convert the alphabet of the target motif databases to the alphabet of the
    query motif database assuming the core symbols of the target motif alphabet are
    a subset; default: reject differences'
  type: boolean
  inputBinding:
    prefix: -xalph
- id: b_file
  doc: 'Name of background file; default: use the background from the query motif
    database'
  type: string
  inputBinding:
    prefix: -bfile
- id: motif_pseudo
  doc: 'Apply the pseudocount to the query and target motifs; default: apply a pseudocount
    of 0.1'
  type: string
  inputBinding:
    prefix: -motif-pseudo
- id: use_motifs_specified
  doc: Use only query motifs with a specified id; may be repeated
  type: string
  inputBinding:
    prefix: -m
- id: mi
  doc: Use only query motifs with a specifed index; may be repeated
  type: string
  inputBinding:
    prefix: -mi
- id: thresh
  doc: 'Significance threshold; default: 0.5'
  type: double
  inputBinding:
    prefix: -thresh
- id: evalue
  doc: 'Use E-value threshold; default: q-value'
  type: boolean
  inputBinding:
    prefix: -evalue
- id: dist
  doc: '|ed|kullback|pearson|sandelin|blic1|blic5|llr1|llr5 Distance metric for scoring
    alignments; default: pearson'
  type: string
  inputBinding:
    prefix: -dist
- id: internal
  doc: 'Only allow internal alignments; default: allow overhangs'
  type: boolean
  inputBinding:
    prefix: -internal
- id: min_overlap
  doc: 'Minimum overlap between query and target; default: 1'
  type: long
  inputBinding:
    prefix: -min-overlap
- id: norc
  doc: Do not score the reverse complements of targets
  type: boolean
  inputBinding:
    prefix: -norc
- id: incomplete_scores
  doc: 'Ignore unaligned columns in computing scores default: use complete set of
    columns'
  type: boolean
  inputBinding:
    prefix: -incomplete-scores
- id: text
  doc: Output in text format (default is HTML)
  type: boolean
  inputBinding:
    prefix: -text
- id: png
  doc: "Create PNG logos; default: don't create PNG logos"
  type: boolean
  inputBinding:
    prefix: -png
- id: eps
  doc: "Create EPS logos; default: don't create EPS logos"
  type: boolean
  inputBinding:
    prefix: -eps
- id: no_ssc
  doc: "Don't apply small-sample correction to logos; default: use small-sample correction"
  type: boolean
  inputBinding:
    prefix: -no-ssc
- id: time
  doc: quit before <time> CPU seconds consumed <time> must be > 0. The Default is
    unlimited CPU time
  type: string
  inputBinding:
    prefix: -time
- id: verbosity
  doc: '[1|2|3|4] Set the verbosity of the program; default: 2 (normal)'
  type: boolean
  inputBinding:
    prefix: -verbosity
- id: version
  doc: Print the version and exit
  type: boolean
  inputBinding:
    prefix: -version
- id: query_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tomtom
