class: CommandLineTool
id: evalCGP.pl.cwl
inputs:
- id: eval_exec_dir
  doc: Directory that contains the executable evaluate_gtf.pl from the eval package.
    If not specified it must be in \$PATH environment variable.
  type: string
  inputBinding:
    prefix: --eval_exec_dir
- id: join_genes
  doc: '=1              Use this option to merge genes in the prediction set and filter
    out duplicates (default: 0)'
  type: boolean
  inputBinding:
    prefix: --joingenes
- id: whole_genome
  doc: =1            If this flag is set evaluation is on the whole genome. Per default,
    evaluation is restricted to the gene ranges
  type: boolean
  inputBinding:
    prefix: --wholeGenome
- id: alternatives
  doc: '=1           Parameter of joingenes. If this flag is set, joingenes keeps
    alternative splice forms of a gene, otherwise it only keeps the best splicing
    form. Per definition, alternative splice forms are either transcripts with the
    same gene ID or the same coding start AND end coordinates (default: 0).'
  type: boolean
  inputBinding:
    prefix: --alternatives
- id: no_selection
  doc: =1            Parameter of joingenes. If this flag is set, joingenes does NOT
    select a single best transcripts among multiple conflicting transcripts. Two transcripts
    are confliciting if they overlap each other and are no alternative splice forms.
    considered as conflicting.
  type: boolean
  inputBinding:
    prefix: --noselection
- id: no_join
  doc: =1                 Parameter of joingenes. If this flag is set, joingenes does
    NOT create new transcripts by merging input transcripts, f.i. it does NOT combine
    two incomplete transcripts to a single complete transcript, where possible.
  type: boolean
  inputBinding:
    prefix: --nojoin
outputs: []
cwlVersion: v1.1
baseCommand:
- evalCGP.pl
