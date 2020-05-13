class: CommandLineTool
id: sraX.cwl
inputs:
- id: o
  doc: "|output     Directory to store obtained results [/path/to/output_dir]. While\
    \ not provided, the following default name will be taken: 'input_directory'_'sraX'_'id'_'aln_cov'_'seqal'\
    \ Example: -------- Input directory: 'Test' Options: -id 85; -c 95; -p dblastx\
    \ Output directory: 'Test_sraX_85_95_dblastx'"
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: "|seqal      The preferred algorithm for aligning the assembled genome(s) to\
    \ a locally compiled AMR DB. The possible choices are: 'dblastx' (DIAMOND blastx)\
    \ or 'blastx' (NCBI blastx). In any case, the process is parallelized (up to 100\
    \ genome files are run simultaneously) for reducing computing times. [string]\
    \ Default: dblastx"
  type: boolean
  inputBinding:
    prefix: -s
- id: a
  doc: "|msa        The preferred algorithm for producing the alignment of clustered\
    \ homologous sequences (multiple-sequence files). The possible choices are: 'muscle',\
    \ 'clustalo' or 'mafft'. [string] Default: muscle Note: The accuracy and computing\
    \ times are both dependent on the selected algorithm."
  type: boolean
  inputBinding:
    prefix: -a
- id: e
  doc: '|eval       Minimum evalue cut-off to filter false positives. [number] Default:
    1e-05'
  type: boolean
  inputBinding:
    prefix: -e
- id: id
  doc: 'Minimum identity cut-off to filter false positives. [number] Default: 85'
  type: boolean
  inputBinding:
    prefix: -id
- id: c
  doc: '|aln_cov    Minimum length of the query which must align to the reference
    sequence. [number] Default: 60'
  type: boolean
  inputBinding:
    prefix: -c
- id: db
  doc: "|dbsearch  The level of the ARG search, on account of the number and type\
    \ of employed AMR DB. The possible choices are: 'basic' or 'ext'. The 'basic'\
    \ option only applies 'CARD', while the 'ext' option utilizes as well the 'ARGminer'\
    \ (compilation of multiple AMR DBs) and 'BACMET' (biocides and metal resistance)\
    \ repositories. [string] Default: basic Note: In operational terms, the extensive\
    \ search ('ext' option) takes much longer computing times. "
  type: boolean
  inputBinding:
    prefix: -db
- id: u
  doc: '|user_sq    Customary AMR DB provided by the user. The sequences must be in
    FASTA format.'
  type: boolean
  inputBinding:
    prefix: -u
- id: t
  doc: '|threads    Number of threads when running sraX. [number] Default: 6'
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: '|version    Displays version information and exits.'
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: "|debug      Verbose output (for debugging). 'sraX' was last modified: 05th\
    \ February 2020"
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- sraX
