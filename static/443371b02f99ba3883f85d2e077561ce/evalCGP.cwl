class: CommandLineTool
id: ../../../evalCGP.pl.cwl
inputs:
- id: eval_exec_dir
  doc: Directory that contains the executable evaluate_gtf.pl from the eval package.
    If not specified it must be in \$PATH environment variable.
  type: string
  inputBinding:
    prefix: --eval_exec_dir
- id: join_genes
  doc: 'Use this option to merge genes in the prediction set and filter out duplicates
    (default: 0)'
  type: string
  inputBinding:
    prefix: --joingenes
- id: whole_genome
  doc: If this flag is set evaluation is on the whole genome. Per default, evaluation
    is restricted to the gene ranges
  type: string
  inputBinding:
    prefix: --wholeGenome
- id: alternatives
  doc: 'Parameter of joingenes. If this flag is set, joingenes keeps alternative splice
    forms of a gene, otherwise it only keeps the best splicing form. Per definition,
    alternative splice forms are either transcripts with the same gene ID or the same
    coding start AND end coordinates (default: 0).'
  type: string
  inputBinding:
    prefix: --alternatives
- id: no_selection
  doc: Parameter of joingenes. If this flag is set, joingenes does NOT select a single
    best transcripts among multiple conflicting transcripts. Two transcripts are confliciting
    if they overlap each other and are no alternative splice forms. considered as
    conflicting.
  type: string
  inputBinding:
    prefix: --noselection
- id: no_join
  doc: Parameter of joingenes. If this flag is set, joingenes does NOT create new
    transcripts by merging input transcripts, f.i. it does NOT combine two incomplete
    transcripts to a single complete transcript, where possible.
  type: string
  inputBinding:
    prefix: --nojoin
- id: annotation_dot_gtf
  doc: Annotation file in GTF format.
  type: string
  inputBinding:
    position: 0
- id: prediction_dot_gtf
  doc: Prediction file in GTF format.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- evalCGP.pl
