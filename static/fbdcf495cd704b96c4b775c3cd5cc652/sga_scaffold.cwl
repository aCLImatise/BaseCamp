class: CommandLineTool
id: sga_scaffold.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: pe
  doc: load links derived from paired-end (short insert) libraries from FILE
  type: File
  inputBinding:
    prefix: --pe
- id: mate_pair
  doc: load links derived from mate-pair (long insert) libraries from FILE
  type: File
  inputBinding:
    prefix: --mate-pair
- id: min_length
  doc: 'only use contigs at least N bp in length to build scaffolds (default: no minimun).'
  type: string
  inputBinding:
    prefix: --min-length
- id: as_qg_file
  doc: optionally load the sequence graph from FILE
  type: File
  inputBinding:
    prefix: --asqg-file
- id: a_statistic_file
  doc: load Myers' A-statistic values from FILE. This is used to determine unique
    and repetitive contigs with the -u/--unique-astat and -r/--repeat-astat parameters
    (required)
  type: File
  inputBinding:
    prefix: --astatistic-file
- id: unique_a_stat
  doc: 'Contigs with an a-statitic value about FLOAT will be considered unique (default:
    20.0)'
  type: double
  inputBinding:
    prefix: --unique-astat
- id: min_copy_number
  doc: 'remove vertices with estimated copy number less than FLOAT (default: 0.5f)'
  type: double
  inputBinding:
    prefix: --min-copy-number
- id: max_sv_size
  doc: 'collapse heterozygous structural variation if the event size is less than
    N (default: 0)'
  type: string
  inputBinding:
    prefix: --max-sv-size
- id: outfile
  doc: 'write the scaffolds to FILE (default: CONTIGSFILE.scaf'
  type: File
  inputBinding:
    prefix: --outfile
- id: remove_conflicting
  doc: if two contigs have multiple distance estimates between them and they do not
    agree, break the scaffold at this point
  type: boolean
  inputBinding:
    prefix: --remove-conflicting
- id: strict
  doc: perform strict consistency checks on the scaffold links. If a vertex X has
    multiple edges, a path will be searched for that contains every vertex linked
    to X. If no such path can be found, the edge of X are removed. This builds very
    conservative scaffolds that should be highly accurate.
  type: boolean
  inputBinding:
    prefix: --strict
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- scaffold
