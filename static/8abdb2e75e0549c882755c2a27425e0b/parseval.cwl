class: CommandLineTool
id: parseval.cwl
inputs:
- id: in_debug
  doc: ':                 Print debugging messages'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_delta
  doc: ": INT             Extend gene loci by this many nucleotides;\ndefault is 0"
  type: boolean?
  inputBinding:
    prefix: --delta
- id: in_verbose
  doc: ':               Print verbose warning messages'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_data_share
  doc: ": STRING      Location from which to copy shared data for\nHTML output (if\
    \ `make install' has not yet\nbeen run)"
  type: boolean?
  inputBinding:
    prefix: --datashare
- id: in_out_format
  doc: ": STRING      Indicate desired output format; possible\noptions: 'csv', 'text',\
    \ or 'html'\n(default='text'); in 'text' or 'csv' mode,\nwill create a single\
    \ file; in 'html' mode,\nwill create a directory"
  type: File?
  inputBinding:
    prefix: --outformat
- id: in_no_gff_three
  doc: ':                Do no print GFF3 output corresponding to each'
  type: boolean?
  inputBinding:
    prefix: --nogff3
- id: in_no_png
  doc: ":                 In HTML output mode, skip generation of PNG\ngraphics for\
    \ each gene locus"
  type: boolean?
  inputBinding:
    prefix: --nopng
- id: in_summary
  doc: ":               Only print summary statistics, do not print\nindividual comparisons"
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_overwrite
  doc: ':             Force overwrite of any existing output files'
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_refr_label
  doc: ': STRING      Optional label for reference annotations'
  type: boolean?
  inputBinding:
    prefix: --refrlabel
- id: in_pred_label
  doc: ': STRING      Optional label for prediction annotations'
  type: boolean?
  inputBinding:
    prefix: --predlabel
- id: in_make_filter
  doc: "Create a default configuration file for\nfiltering reported results and quit,\n\
    performing no comparisons"
  type: boolean?
  inputBinding:
    prefix: --makefilter
- id: in_filter_file
  doc: ": STRING     Use the indicated configuration file to\nfilter reported results;"
  type: boolean?
  inputBinding:
    prefix: --filterfile
- id: in_max_trans
  doc: ": INT          Maximum transcripts allowed per locus; use 0\nto disable limit;\
    \ default is 32\n"
  type: boolean?
  inputBinding:
    prefix: --maxtrans
- id: in_comparison
  doc: '-o|--outfile: FILENAME      File/directory to which output will be'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_format
  doc: ": STRING      Indicate desired output format; possible\noptions: 'csv', 'text',\
    \ or 'html'\n(default='text'); in 'text' or 'csv' mode,\nwill create a single\
    \ file; in 'html' mode,\nwill create a directory"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aegean:0.16.0--hc2cb157_0
cwlVersion: v1.1
baseCommand:
- parseval
