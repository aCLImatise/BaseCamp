class: CommandLineTool
id: bp_search2gff.pl.cwl
inputs:
- id: args
  doc: ': A L<Bio::LocationI> compliant object'
  type: string
  inputBinding:
    position: 0
- id: i
  doc: '- (optional) inputfilename, will read either ARGV files or from STDIN'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: '- the output filename [default STDOUT]'
  type: File
  inputBinding:
    prefix: -o
- id: f
  doc: '- search result format (blast, fasta,waba,axt) (ssearch is fasta format).
    default is blast.'
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: /--type seqtype  - if you want to see query or hit information in the GFF report
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: /--source        - specify the source (will be algorithm name otherwise like
    BLASTN)
  type: boolean
  inputBinding:
    prefix: -s
- id: method
  doc: '- the method tag (primary_tag) of the features (default is similarity)'
  type: boolean
  inputBinding:
    prefix: --method
- id: score_func
  doc: '- a string or a file that when parsed evaluates to a closure which will be
    passed a feature object and that returns the score to be printed'
  type: boolean
  inputBinding:
    prefix: --scorefunc
- id: loc_func
  doc: '- a string or a file that when parsed evaluates to a closure which will be
    passed two features, query and hit, and returns the location (Bio::LocationI compliant)
    for the GFF3 feature created for each HSP; the closure may use the clone_loc()
    and create_loc() functions for convenience, see their PODs'
  type: boolean
  inputBinding:
    prefix: --locfunc
- id: one_hsp
  doc: '- only print the first HSP feature for each hit'
  type: boolean
  inputBinding:
    prefix: --onehsp
- id: p
  doc: /--parent        - the parent to which HSP features should refer if not the
    name of the hit or query (depending on --type)
  type: boolean
  inputBinding:
    prefix: -p
- id: target
  doc: /--notarget - whether to always add the Target tag or not
  type: boolean
  inputBinding:
    prefix: --target
- id: component
  doc: '- generate GFF component fields (chromosome)'
  type: boolean
  inputBinding:
    prefix: --component
- id: m
  doc: /--match         - generate a 'match' line which is a container of all the
    similarity HSPs
  type: boolean
  inputBinding:
    prefix: -m
- id: add_id
  doc: '- add ID tag in the absence of --match'
  type: boolean
  inputBinding:
    prefix: --addid
- id: c
  doc: /--cutoff        - specify an evalue cutoff
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_search2gff.pl
