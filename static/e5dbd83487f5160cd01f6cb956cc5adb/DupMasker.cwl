class: CommandLineTool
id: DupMasker.cwl
inputs:
- id: in_version
  doc: Displays the version of the program
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_engine
  doc: "The name of the search engine we are using. I.e abblast/wublast or\nncbi (rmblast\
    \ version). If not specified it will attempt to use the\ndefault configured for\
    \ RepeatMasker."
  type: string?
  inputBinding:
    prefix: -engine
- id: in_max_div
  doc: "Filter out duplicon seeds which have a divergence greater than this\nvalue."
  type: string?
  inputBinding:
    prefix: -maxDiv
- id: in_maxwidth
  doc: The maximum non-repetitive/non-seed realign gaps, default is 300bp
  type: long?
  inputBinding:
    prefix: -maxWidth
- id: in_force_search
  doc: "DupMasker uses RepeatMasker .out and previous runs of DupMasker's\n*.dupout\
    \ files by default. Use this option if you would like to\nrerun these searches."
  type: boolean?
  inputBinding:
    prefix: -forceSearch
- id: in_align
  doc: Produce alignments. These are stored in the output file.
  type: File?
  inputBinding:
    prefix: -align
- id: in_gff
  doc: Creates an additional Gene Feature Finding (gff) output file.
  type: File?
  inputBinding:
    prefix: -gff
- id: in_crossmatch_dir
  doc: The path Phil Green's cross_match program ( phrap program suite ).
  type: File?
  inputBinding:
    prefix: -crossmatch_dir
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
- id: in_libdir
  doc: Path to the RepeatMasker libraries directory.
  type: File?
  inputBinding:
    prefix: -libdir
- id: in_abb_last_dir
  doc: "The path to the installation of the ABBLAST sequence alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -abblast_dir
- id: in_hmmer_dir
  doc: The path to the HMMER profile HMM search software.
  type: File?
  inputBinding:
    prefix: -hmmer_dir
- id: in_trf_prgm
  doc: The full path including the name for the TRF program.
  type: File?
  inputBinding:
    prefix: -trf_prgm
- id: in_one_dot
  doc: 'The output is placed in a file named '
  type: string
  inputBinding:
    position: 0
- id: in_my_filed_otf_a_dot_dupl_icons_dot
  doc: "The basic program flow is:\n- RepeatMask the sequence ( Human libraries )\n\
    - Search the masked squence against the duplicon library\n- Build realignment\
    \ regions for each duplicon\n- Realign using non-repeat-masked dna\n- Join duplicons\
    \ and output results"
  type: string
  inputBinding:
    position: 1
- id: in_repeatmasker
  doc: COPYRIGHT
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_align
  doc: Produce alignments. These are stored in the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_align)
- id: out_gff
  doc: Creates an additional Gene Feature Finding (gff) output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_gff)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/repeatmasker:4.1.1--pl526_1
cwlVersion: v1.1
baseCommand:
- DupMasker
