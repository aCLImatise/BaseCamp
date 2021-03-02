class: CommandLineTool
id: ucsc_to_json.pl.cwl
inputs:
- id: in_out
  doc: output directory for JSON, defaults to "data/"
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_track
  doc: "'trackName'\nname of the database table, e.g., \"knownGene\""
  type: boolean?
  inputBinding:
    prefix: --track
- id: in_primary_name
  doc: "'name2'\nname of the UCSC data column (e.g. \"name2\" in the case of the UCSC\n\
    \"refGene\" track) to use as the primary name of features in the\nJBrowse display.\
    \ If this is set, the primaryName field will be\nswapped with the name field in\
    \ the output. For example,\n\"--primaryName 'name2'\" will cause the output's\
    \ \"name\" to be the\nUCSC \"name2\", and \"name2\" will be the UCSC \"name\"."
  type: boolean?
  inputBinding:
    prefix: --primaryName
- id: in_css_class_use
  doc: "'classname'\nCSS class to use for features in this track, defaults to \"basic\""
  type: boolean?
  inputBinding:
    prefix: --cssClass
- id: in_arrowhead_class
  doc: "'classname'\nCSS class for arrowheads, e.g., \"transcript-arrowhead\""
  type: boolean?
  inputBinding:
    prefix: --arrowheadClass
- id: in_sub_feature_classes
  doc: "'{ JSON }'\nCSS classes for each subfeature type, in JSON syntax, e.g.\n'{\"\
    CDS\": \"transcript-CDS\", \"exon\": \"transcript-exon\"}'"
  type: boolean?
  inputBinding:
    prefix: --subfeatureClasses
- id: in_client_config
  doc: "'{ JSON }'\nextra configuration for the client, in JSON syntax, e.g.\n'{\"\
    featureCss\": \"background-color: #668; height: 8px;\", \"histScale\": 2}'\nFor\
    \ historical reasons, this is only merged into the \"style\" section\nof the new\
    \ track's configuration."
  type: boolean?
  inputBinding:
    prefix: --clientConfig
- id: in_ncl_chunk
  doc: "Size of the individual Nested Containment List chunks. Default\n50,000 bp."
  type: long?
  inputBinding:
    prefix: --nclChunk
- id: in_compress
  doc: "If passed, compress the output with gzip, making .jsonz files. This\ncan save\
    \ a lot of disk space on the server, but serving these files\nto JBrowse requires\
    \ some web server configuration."
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_sort_mem
  doc: The amount of RAM in bytes to use for sorting.
  type: string?
  inputBinding:
    prefix: --sortMem
- id: in_quiet
  doc: Do not print progress messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_var_11
  doc: \
  type: string?
  inputBinding:
    prefix: --cssclass
- id: in_ucsc_to_json_do_tpl
  doc: \
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output directory for JSON, defaults to "data/"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ucsc-to-json.pl
