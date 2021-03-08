class: CommandLineTool
id: genewalk.cwl
inputs:
- id: in_project
  doc: "A name for the project which determines the folder\nwithin the base folder\
    \ in which the intermediate and\nfinal results are written. Must contain only\n\
    characters that are valid in folder names."
  type: Directory?
  inputBinding:
    prefix: --project
- id: in_genes
  doc: "Path to a text file with a list of genes of interest,\nfor exampledifferentially\
    \ expressed genes. The type of\ngene identifiers used in the text file are provided\
    \ in\nthe id_type argument."
  type: File?
  inputBinding:
    prefix: --genes
- id: in_id_type
  doc: "The type of gene IDs provided in the text file in the\ngenes argument. Possible\
    \ values are: hgnc_symbol,\nhgnc_id, ensembl_id, mgi_id,rgd_id, entrez_human,\n\
    entrez_mouse, and custom. If custom, a network_source\nof sif_annot or sif_full\
    \ must be used."
  type: string?
  inputBinding:
    prefix: --id_type
- id: in_stage
  doc: 'The stage of processing to run. Default: all'
  type: string?
  inputBinding:
    prefix: --stage
- id: in_base_folder
  doc: "The base folder used to store GeneWalk temporary and\nresult files for a given\
    \ project. Default:\n/root/genewalk"
  type: Directory?
  inputBinding:
    prefix: --base_folder
- id: in_network_source
  doc: "The source of the network to be used. Possible values\nare: pc, indra, edge_list,\
    \ sif, sif_annot, and\nsif_full. In case of indra, edge_list, sif, sif_annot,\n\
    and sif_full, the network_file argument must be\nspecified. Default: pc"
  type: string?
  inputBinding:
    prefix: --network_source
- id: in_network_file
  doc: "If network_source is indra, this argument points to a\nPython pickle file\
    \ in which a list of INDRA Statements\nconstituting the network is contained.\
    \ In case\nnetwork_source is edge_list, sif, sif_annot or\nsif_full, the network_file\
    \ argument points to a text\nfile representing the network. See README section\n\
    Custom input networks for full description of file\nformat requirements."
  type: File?
  inputBinding:
    prefix: --network_file
- id: in_nproc
  doc: "The number of processors to use in a multiprocessing\nenvironment. Default:\
    \ 1"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_n_reps_graph
  doc: "The number of repeats to run when calculating node\nvectors on the GeneWalk\
    \ graph. Default: 3"
  type: long?
  inputBinding:
    prefix: --nreps_graph
- id: in_n_reps_null
  doc: "The number of repeats to run when calculating node\nvectors on the random\
    \ network graphs for constructing\nthe null distribution. Default: 3"
  type: long?
  inputBinding:
    prefix: --nreps_null
- id: in_alpha_fdr
  doc: "The false discovery rate to use when outputting the\nfinal statistics table.\
    \ If 1 (default), all\nsimilarities are output, otherwise only the ones whose\n\
    false discovery rate are below this parameter are\nincluded. For visualization\
    \ a default value of 0.1 for\nboth global and gene-specific plots is used. Lower\n\
    this value to increase the stringency of the regulator\ngene selection procedure.\
    \ Default: 1"
  type: double?
  inputBinding:
    prefix: --alpha_fdr
- id: in_dim_rep
  doc: "Dimension of vector representations (embeddings). This\nvalue should only\
    \ be increased if genewalk with the\ndefault value generates no statistically\
    \ significant\nresults, for instance with very large (>2500) input\ngene lists.\
    \ Alternatively, it can be decreased in case\n(nearly) all GO annotations are\
    \ significant, for\ninstance with very short gene lists. Default: 8"
  type: long?
  inputBinding:
    prefix: --dim_rep
- id: in_save_dw
  doc: "If True, the full DeepWalk object for each repeat is\nsaved in the project\
    \ folder. This can be useful for\ndebugging but the files are typically very large.\n\
    Default: False"
  type: Directory?
  inputBinding:
    prefix: --save_dw
- id: in_random_seed
  doc: "If provided, the random number generator is seeded\nwith the given value.\
    \ This should only be used if the\ngoal is to deterministically reproduce a prior\
    \ result\nobtained with the same random seed.\n"
  type: long?
  inputBinding:
    prefix: --random_seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genewalk:1.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- genewalk
