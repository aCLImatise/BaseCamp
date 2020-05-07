class: CommandLineTool
id: taxator.cwl
inputs:
- id: citation
  doc: show citation info
  type: boolean
  inputBinding:
    prefix: --citation
- id: advanced_options
  doc: show advanced program options
  type: boolean
  inputBinding:
    prefix: --advanced-options
- id: a
  doc: '[ --algorithm ] arg (=rpa)      set the algorithm that is used to predict  taxonomic
    ids from alignments'
  type: boolean
  inputBinding:
    prefix: -a
- id: g
  doc: '[ --seqid-taxid-mapping ] arg   filename of seqid->taxid mapping for  reference'
  type: boolean
  inputBinding:
    prefix: -g
- id: q
  doc: '[ --query-sequences ] arg       query sequences FASTA'
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: '[ --query-sequences-index ] arg query sequences FASTA index, for  out-of-memory
    operation; is created if not existing'
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: '[ --ref-sequences ] arg         reference sequences FASTA'
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: '[ --ref-sequences-index ] arg   FASTA file index, for out-of-memory  operation;
    is created if not existing'
  type: boolean
  inputBinding:
    prefix: -i
- id: p
  doc: '[ --processors ] arg (=1)       sets number of threads, number > 2 will  heavily
    profit from multi-core  architectures, set to 0 for max.  performance'
  type: boolean
  inputBinding:
    prefix: -p
- id: l
  doc: '[ --logfile ] arg (=/dev/null)  specify name of file for logging  (appending
    lines)'
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- taxator
