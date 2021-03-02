class: CommandLineTool
id: mikado_compare.cwl
inputs:
- id: in_distance
  doc: "Maximum distance for a transcript to be considered a\npolymerase run-on. Default:\
    \ 2000"
  type: long?
  inputBinding:
    prefix: --distance
- id: in_protein_coding
  doc: "Flag. If set, only transcripts with a CDS (both in\nreference and prediction)\
    \ will be considered."
  type: boolean?
  inputBinding:
    prefix: --protein-coding
- id: in_out
  doc: 'Prefix for the output files. Default: mikado_compare'
  type: string?
  inputBinding:
    prefix: --out
- id: in_fuzzy_intron_match
  doc: "This parameter controls whether an intron should be\nconsidered as \"matched\"\
    \ even if its splices are within\nN bases from the annotated splice junctions.\
    \ By\ndefault this is set to 0 (ie only proper matches\ncount)."
  type: long?
  inputBinding:
    prefix: --fuzzy-intron-match
- id: in_lenient
  doc: "If set, exonic statistics will be calculated leniently\nin the TMAP as well\
    \ - ie they will consider an exon as\nmatch even if only the internal junction\
    \ has been\nrecovered."
  type: boolean?
  inputBinding:
    prefix: --lenient
- id: in_do_not_report_fusions
  doc: "Flag. If invoked, Mikado compare will not report\nfusions in the input. Useful\
    \ when the reference\ntranscripts have not been clustered properly into\ngenes\
    \ (e.g. a Mikado prepare run)."
  type: boolean?
  inputBinding:
    prefix: --do-not-report-fusions
- id: in_exclude_utr
  doc: "Flag. If set, reference and prediction transcripts\nwill be stripped of their\
    \ UTRs (if they are coding)."
  type: boolean?
  inputBinding:
    prefix: --exclude-utr
- id: in_no_save_index
  doc: "Unless this flag is set, compare will save an index of\nthe reference to quicken\
    \ multiple calls."
  type: boolean?
  inputBinding:
    prefix: --no-save-index
- id: in_extended_ref_map
  doc: "Flag. If set, the RefMap will also contain recall and\nprecision statistics\
    \ - not just the F1."
  type: boolean?
  inputBinding:
    prefix: --extended-refmap
- id: in_use_prediction_alias
  doc: "Flag. If set, Mikado Compare will use the alias -\nrather than the transcript\
    \ ID - to report the results\nfor prediction transcripts in the TMAP and REFMAP\n\
    files."
  type: boolean?
  inputBinding:
    prefix: --use-prediction-alias
- id: in_verbose
  doc: Flag. If set, TMAP and REFMAP files will be GZipped.
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_reference
  doc: "Reference annotation file. By default, an index will\nbe crated and saved\
    \ with the suffix \".midx\"."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_prediction
  doc: Prediction annotation file.
  type: File?
  inputBinding:
    prefix: --prediction
- id: in_self
  doc: "Flag. If set, the reference will be compared with\nitself. Useful for understanding\
    \ how the reference\ntranscripts interact with each other. If this option\nis\
    \ selected, the stats file will not be produced."
  type: boolean?
  inputBinding:
    prefix: --self
- id: in_internal
  doc: "Flag. If set, for each gene with more than one\ntranscript isoform each will\
    \ be compared to the\nothers. Useful for understanding the structural\nrelationships\
    \ between the transcripts in each gene."
  type: boolean?
  inputBinding:
    prefix: --internal
- id: in_index
  doc: "Flag. If set, compare will stop after having generated\nthe GFF index for\
    \ the reference.\n"
  type: boolean?
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mikado
- compare
