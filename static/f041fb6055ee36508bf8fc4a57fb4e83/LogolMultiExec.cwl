class: CommandLineTool
id: LogolMultiExec.sh.cwl
inputs:
- id: enabled_ups
  doc: ': enable duplicate result matches. By default only keep singletons'
  type: boolean
  inputBinding:
    prefix: '- enabledups'
- id: conf
  doc: ': configuration file'
  type: boolean
  inputBinding:
    prefix: '- conf'
- id: lmax
  doc: ': maximum length of a variable'
  type: boolean
  inputBinding:
    prefix: '- lmax'
- id: local
  doc: ': use local system'
  type: boolean
  inputBinding:
    prefix: '- local'
- id: fast_a
  doc: ': Add fasta conversion to result archive'
  type: boolean
  inputBinding:
    prefix: '- fasta'
- id: out
  doc: ': Zip output file name'
  type: boolean
  inputBinding:
    prefix: '- out'
- id: sge
  doc: ': use SGE'
  type: boolean
  inputBinding:
    prefix: '- sge'
- id: lm_in
  doc: ': minimum length of a variable'
  type: boolean
  inputBinding:
    prefix: '- lmin'
- id: no_clean
  doc: ': Do not delete created files after treatment'
  type: boolean
  inputBinding:
    prefix: '- noclean'
- id: dna
  doc: ': analyse dna, is default'
  type: boolean
  inputBinding:
    prefix: '- dna'
- id: protein
  doc: ': analyse protein'
  type: boolean
  inputBinding:
    prefix: '- protein'
- id: email
  doc: ': Email address to send result availability info'
  type: boolean
  inputBinding:
    prefix: '- email'
- id: all
  doc: ': analyse both directions of the sequence'
  type: boolean
  inputBinding:
    prefix: '- all'
- id: rna
  doc: ': analyse rna'
  type: boolean
  inputBinding:
    prefix: '- rna'
- id: max
  doc: ': maximum returned solutions'
  type: boolean
  inputBinding:
    prefix: '- max'
- id: max_spacer
  doc: ': maximum size of a spacer'
  type: boolean
  inputBinding:
    prefix: '- maxspacer'
- id: gff
  doc: ': Add gff conversion to result archive'
  type: boolean
  inputBinding:
    prefix: '- gff'
- id: g
  doc: ': grammar file to analyse'
  type: boolean
  inputBinding:
    prefix: '- g'
- id: h
  doc: ': get usage'
  type: boolean
  inputBinding:
    prefix: '- h'
- id: m
  doc: ': model file to analyse'
  type: boolean
  inputBinding:
    prefix: '- m'
- id: contig
  doc: ': set the bank as contig sequences'
  type: boolean
  inputBinding:
    prefix: '- contig'
- id: force_split
  doc: ': Force the sequence splitting according to parameters and whatever is the
    number of model used in grammar'
  type: boolean
  inputBinding:
    prefix: '- forcesplit'
- id: filter
  doc: ': Type of filter when enabledups is not enabled. Allowed types are exact(default),local,local0,global.'
  type: boolean
  inputBinding:
    prefix: '- filter'
- id: s
  doc: ': sequence database'
  type: boolean
  inputBinding:
    prefix: '- s'
- id: max_res
  doc: ': maximum result size of a match'
  type: boolean
  inputBinding:
    prefix: '- maxres'
- id: v
  doc: ': get version'
  type: boolean
  inputBinding:
    prefix: '- v'
- id: guid
  doc: ': unique identifier for the query'
  type: boolean
  inputBinding:
    prefix: '- guid'
- id: max_match_size
  doc: ': maximum size of a match'
  type: boolean
  inputBinding:
    prefix: '- maxmatchsize'
outputs: []
cwlVersion: v1.1
baseCommand:
- LogolMultiExec.sh
