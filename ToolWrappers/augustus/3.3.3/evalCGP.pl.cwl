class: CommandLineTool
id: evalCGP.pl.cwl
inputs:
- id: in_eval_exec_dir
  doc: "Directory that contains the executable evaluate_gtf.pl from the eval package.\n\
    If not specified it must be in \\$PATH environment variable."
  type: File?
  inputBinding:
    prefix: --eval_exec_dir
- id: in_join_genes
  doc: 'Use this option to merge genes in the prediction set and filter out duplicates
    (default: 0)'
  type: long?
  inputBinding:
    prefix: --joingenes
- id: in_whole_genome
  doc: "If this flag is set evaluation is on the whole genome. Per default, evaluation\n\
    is restricted to the gene ranges"
  type: long?
  inputBinding:
    prefix: --wholeGenome
- id: in_alternatives
  doc: "Parameter of joingenes. If this flag is set, joingenes keeps alternative splice\
    \ forms of a gene, otherwise\nit only keeps the best splicing form. Per definition,\
    \ alternative splice forms are either transcripts\nwith the same gene ID or the\
    \ same coding start AND end coordinates (default: 0)."
  type: long?
  inputBinding:
    prefix: --alternatives
- id: in_no_selection
  doc: "Parameter of joingenes. If this flag is set, joingenes does NOT select a single\
    \ best transcripts\namong multiple conflicting transcripts. Two transcripts are\
    \ confliciting if they overlap\neach other and are no alternative splice forms.\n\
    considered as conflicting."
  type: long?
  inputBinding:
    prefix: --noselection
- id: in_no_join
  doc: "Parameter of joingenes. If this flag is set, joingenes does NOT create new\n\
    transcripts by merging input transcripts, f.i. it does NOT combine two\nincomplete\
    \ transcripts to a single complete transcript, where possible.\n"
  type: long?
  inputBinding:
    prefix: --nojoin
- id: in_annotation_dot_gtf
  doc: Annotation file in GTF format.
  type: string
  inputBinding:
    position: 0
- id: in_prediction_dot_gtf
  doc: Prediction file in GTF format.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- evalCGP.pl
