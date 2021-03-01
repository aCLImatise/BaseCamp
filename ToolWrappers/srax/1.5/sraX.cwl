class: CommandLineTool
id: sraX.cwl
inputs:
- id: in_input_input_directory
  doc: "|input      Input directory [/path/to/input_dir] containing the input file(s),\
    \ which\nmust be in FASTA format and consisting of individual assembled genome\
    \ sequences."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_directory_store
  doc: "|output     Directory to store obtained results [/path/to/output_dir]. While\
    \ not\nprovided, the following default name will be taken:\n'input_directory'_'sraX'_'id'_'aln_cov'_'seqal'\n\
    Example:\n--------\nInput directory: 'Test'\nOptions: -id 85; -c 95; -p dblastx\n\
    Output directory: 'Test_sraX_85_95_dblastx'"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_seqal_preferred_algorithm
  doc: "|seqal      The preferred algorithm for aligning the assembled genome(s) to\
    \ a locally\ncompiled AMR DB. The possible choices are: 'dblastx' (DIAMOND blastx)\
    \ or 'blastx'\n(NCBI blastx). In any case, the process is parallelized (up to\
    \ 100 genome files are\nrun simultaneously) for reducing computing times. [string]\
    \ Default: dblastx"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_msa_preferred_algorithm
  doc: "|msa        The preferred algorithm for producing the alignment of clustered\
    \ homologous\nsequences (multiple-sequence files). The possible choices are: 'muscle',\
    \ 'clustalo'\nor 'mafft'. [string] Default: muscle\nNote: The accuracy and computing\
    \ times are both dependent on the selected algorithm."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_eval_minimum_evalue
  doc: '|eval       Minimum evalue cut-off to filter false positives. [number] Default:
    1e-05'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_id
  doc: 'Minimum identity cut-off to filter false positives. [number] Default: 85'
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_alncov_minimum_length
  doc: "|aln_cov    Minimum length of the query which must align to the reference\
    \ sequence.\n[number] Default: 60"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_db
  doc: "|dbsearch  The level of the ARG search, on account of the number and type\
    \ of employed AMR DB.\nThe possible choices are: 'basic' or 'ext'. The 'basic'\
    \ option only applies 'CARD',\nwhile the 'ext' option utilizes as well the 'ARGminer'\
    \ (compilation of multiple AMR\nDBs) and 'BACMET' (biocides and metal resistance)\
    \ repositories. [string] Default:\nbasic\nNote: In operational terms, the extensive\
    \ search ('ext' option) takes much longer\ncomputing times."
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_usersq_customary_amr
  doc: '|user_sq    Customary AMR DB provided by the user. The sequences must be in
    FASTA format.'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_threads_number_running
  doc: '|threads    Number of threads when running sraX. [number] Default: 6'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_version_displays_version
  doc: '|version    Displays version information and exits.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_debug_verbose_output
  doc: "|debug      Verbose output (for debugging).\n'sraX' was last modified: 05th\
    \ February 2020\n"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_synopsis
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_accomplished
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_enclosing
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_presence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_repositories
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_designed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_antimicrobial
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_running
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_selected
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_26
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_resistance
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_assembled
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_genes
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_command_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_under
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_default
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_var_38
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_required_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_var_41
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_addition
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_systematically
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_detect
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sraX
