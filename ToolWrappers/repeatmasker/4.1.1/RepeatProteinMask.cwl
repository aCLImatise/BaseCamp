class: CommandLineTool
id: RepeatProteinMask.cwl
inputs:
- id: in_engine
  doc: "|abblast|wublast\nUse the provided search engine to run the blastx runs."
  type: string?
  inputBinding:
    prefix: -engine
- id: in_p_value
  doc: "#\nThe threshold for accepting matches. Matches must hava a pvalue less\n\
    than this number. Default is *NOT* to threshold."
  type: boolean?
  inputBinding:
    prefix: -pvalue
- id: in_min_score
  doc: "#\nThreshold on minscore. Note no default is added. So all hits will be\n\
    returned unless a minscore is used."
  type: boolean?
  inputBinding:
    prefix: -minscore
- id: in_word_size
  doc: "#\nThe wordsize to use with the blastx search. Default is 3"
  type: boolean?
  inputBinding:
    prefix: -wordsize
- id: in_query_stat_len
  doc: "#\nThe effective length of the query to use in statistical\ncalculations."
  type: boolean?
  inputBinding:
    prefix: -querystatlen
- id: in_max_aa_dist
  doc: "#\nThe maximum distance to consider two blastx hits as the same (and\nthus\
    \ contributing to Sum P scores). Default is 333."
  type: boolean?
  inputBinding:
    prefix: -maxaadist
- id: in_no_low_simple
  doc: "Turns off masking/annotating of low complexity and simple repeats in\nthe\
    \ final output. Low complexity and simple repeat analysis will\nstill occur prior\
    \ to looking for matches to the RepeatPep database."
  type: boolean?
  inputBinding:
    prefix: -noLowSimple
- id: in_trf_prgm
  doc: The full path including the name for the TRF program.
  type: File?
  inputBinding:
    prefix: -trf_prgm
- id: in_default_search_engine
  doc: The default search engine to use
  type: string?
  inputBinding:
    prefix: -default_search_engine
- id: in_rmb_last_dir
  doc: "The path to the installation of the RMBLAST sequence alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -rmblast_dir
- id: in_abb_last_dir
  doc: "The path to the installation of the ABBLAST sequence alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -abblast_dir
- id: in_crossmatch_dir
  doc: The path Phil Green's cross_match program ( phrap program suite ).
  type: File?
  inputBinding:
    prefix: -crossmatch_dir
- id: in_libdir
  doc: Path to the RepeatMasker libraries directory.
  type: File?
  inputBinding:
    prefix: -libdir
- id: in_hmmer_dir
  doc: The path to the HMMER profile HMM search software.
  type: File?
  inputBinding:
    prefix: -hmmer_dir
- id: in_repeat_modeler
  doc: COPYRIGHT
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/repeatmasker:4.1.1--pl526_1
cwlVersion: v1.1
baseCommand:
- RepeatProteinMask
