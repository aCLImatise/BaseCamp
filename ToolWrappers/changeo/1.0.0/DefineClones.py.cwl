class: CommandLineTool
id: DefineClones.py.cwl
inputs:
- id: in_list_tab_defaultnone
  doc: "A list of tab delimited database files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -d
- id: in_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir, or --outname\narguments. If unspecified, then the output filename\n\
    will be based on the input filename(s). (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --failed
- id: in_format
  doc: 'Specify input and output format. (default: airr)'
  type: string
  inputBinding:
    prefix: --format
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long
  inputBinding:
    prefix: --nproc
- id: in_sf
  doc: "Field to be used to calculate distance between\nrecords. Defaults to junction\
    \ (airr) or JUNCTION\n(changeo). (default: None)"
  type: string
  inputBinding:
    prefix: --sf
- id: in_vf
  doc: "Field containing the germline V segment call. Defaults\nto v_call (airr) or\
    \ V_CALL (changeo). (default: None)"
  type: string
  inputBinding:
    prefix: --vf
- id: in_jf
  doc: "Field containing the germline J segment call. Defaults\nto j_call (airr) or\
    \ J_CALL (changeo). (default: None)"
  type: string
  inputBinding:
    prefix: --jf
- id: in_gf
  doc: "Additional fields to use for grouping clones aside\nfrom V, J and junction\
    \ length. (default: None)"
  type: string[]
  inputBinding:
    prefix: --gf
- id: in_mode
  doc: "Specifies whether to use the V(D)J allele or gene for\ninitial grouping. (default:\
    \ gene)"
  type: string
  inputBinding:
    prefix: --mode
- id: in_act
  doc: "Specifies how to handle multiple V(D)J assignments for\ninitial grouping.\
    \ The \"first\" action will use only the\nfirst gene listed. The \"set\" action\
    \ will use all gene\nassignments and construct a larger gene grouping\ncomposed\
    \ of any sequences sharing an assignment or\nlinked to another sequence by a common\
    \ assignment\n(similar to single-linkage). (default: set)"
  type: string
  inputBinding:
    prefix: --act
- id: in_model
  doc: "Specifies which substitution model to use for\ncalculating distance between\
    \ sequences. The \"ham\"\nmodel is nucleotide Hamming distance and \"aa\" is amino\n\
    acid Hamming distance. The \"hh_s1f\" and \"hh_s5f\"\nmodels are human specific\
    \ single nucleotide and 5-mer\ncontent models, respectively, from Yaari et al,\
    \ 2013.\nThe \"mk_rs1nf\" and \"mk_rs5nf\" models are mouse\nspecific single nucleotide\
    \ and 5-mer content models,\nrespectively, from Cui et al, 2016. The \"m1n_compat\"\
    \nand \"hs1f_compat\" models are deprecated models\nprovided backwards compatibility\
    \ with the \"m1n\" and\n\"hs1f\" models in Change-O v0.3.3 and SHazaM v0.1.4.\n\
    Both 5-mer models should be considered experimental.\n(default: ham)"
  type: string
  inputBinding:
    prefix: --model
- id: in_dist
  doc: "The distance threshold for clonal grouping (default:\n0.0)"
  type: double
  inputBinding:
    prefix: --dist
- id: in_norm
  doc: "Specifies how to normalize distances. One of none (do\nnot normalize), len\
    \ (normalize by length), or mut\n(normalize by number of mutations between sequences).\n\
    (default: len)"
  type: string
  inputBinding:
    prefix: --norm
- id: in_sym
  doc: "Specifies how to combine asymmetric distances. One of\navg (average of A->B\
    \ and B->A) or min (minimum of A->B\nand B->A). (default: avg)"
  type: string
  inputBinding:
    prefix: --sym
- id: in_link
  doc: "Type of linkage to use for hierarchical clustering.\n(default: single)"
  type: string
  inputBinding:
    prefix: --link
- id: in_max_miss
  doc: "The maximum number of non-ACGT characters (gaps or Ns)\nto permit in the junction\
    \ sequence before excluding\nthe record from clonal assignment. Note, under single\n\
    linkage non-informative positions can create\nartifactual links between unrelated\
    \ sequences. Use\nwith caution. (default: 0)"
  type: long
  inputBinding:
    prefix: --maxmiss
- id: in_clone_pass
  doc: database with assigned clonal group numbers.
  type: string
  inputBinding:
    position: 0
- id: in_clone_fail
  doc: database with records failing clonal grouping.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DefineClones.py
