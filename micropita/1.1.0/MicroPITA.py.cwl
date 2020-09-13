class: CommandLineTool
id: ../../../MicroPITA.py.cwl
inputs:
- id: in_num
  doc: "The number of samples to select with unsupervised\nmethodology. (An integer\
    \ greater than 0.)."
  type: long
  inputBinding:
    prefix: --num
- id: in_method
  doc: Select techniques listed one after another.
  type: string
  inputBinding:
    prefix: --method
- id: in_alpha
  doc: "A key word for any PyCogent supplied alpha diveristy\nmetric (Richness, evenness,\
    \ or diversity). Please\nsupply an unnormalized (counts) abundance table for\n\
    these metrics. Metrics include heip_e fisher_alpha\nequitability menhinick simpson\
    \ robbins\nreciprocal_simpson chao1 simpson_e margalef\nberger_parker_d observed_species\
    \ brillouin_d\nmcintosh_d mcintosh_e ACE strong dominance shannon\nmichaelis_menten_fit."
  type: long
  inputBinding:
    prefix: --alpha
- id: in_beta
  doc: "A key word for any PyCogent supplied beta diversity\nmetric. Metrics include\
    \ chebyshev canberra sqeuclidean\nbraycurtis euclidean cosine hamming correlation\n\
    cityblock unifrac_unweighted unifrac_weighted."
  type: string
  inputBinding:
    prefix: --beta
- id: in_alpha_meta
  doc: "Metric in the pcl file which has custom alpha\ndiversity measurements to use\
    \ with the highest\ndiversity sampling criteria. Should be a number\nbetween 0.0\
    \ and 1.0 with 1.0 meaning most diverse."
  type: long
  inputBinding:
    prefix: --alphameta
- id: in_beta_matrix
  doc: "Precalculated beta-diversity matrix to be used in the\nrepresentative sampling\
    \ criteria. Should be a number\nbetween 0.0 and 1.0 with 1.0 meaning most dissimilar."
  type: long
  inputBinding:
    prefix: --betamatrix
- id: in_tree
  doc: "Tree for phylogenetic when selecting custom beta-\ndiversities in the representative\
    \ sampling criteria."
  type: string
  inputBinding:
    prefix: --tree
- id: in_envr
  doc: "File describing the smaple environments; for use with\nUnifrac distance metrics."
  type: File
  inputBinding:
    prefix: --envr
- id: in_invert_diversity
  doc: "When using this flag, the diversity will be inverted\n(multiplicative inverse)\
    \ before ranking in the highest\ndiversity method. Recommended to use with dominance,\n\
    menhinick, reciprocal_simpson, berger_parker_d,\nmcintosh_e, simpson_e, strong\
    \ and any metric where 0\nindicates most diverse."
  type: boolean
  inputBinding:
    prefix: --invertDiversity
- id: in_id
  doc: "The row in the abundance file that is the sample\nname/id row. Should be the\
    \ sample name/Id in first\ncolumn of the row."
  type: File
  inputBinding:
    prefix: --id
- id: in_last_meta
  doc: "The row in the abundance file that is the sample\nname/id row. Should be the\
    \ metadata name/Id in first\ncolumn of the metadta row."
  type: File
  inputBinding:
    prefix: --lastmeta
- id: in_feature_method
  doc: The ranking method used to select targeted features.
  type: string
  inputBinding:
    prefix: --feature_method
- id: in_targets
  doc: "A file containing taxa/OTUs/clades to be used in\ntargeted feature sampling\
    \ criteria."
  type: File
  inputBinding:
    prefix: --targets
- id: in_last_feature_metadata
  doc: "The last metadata describing a (bug) feature (not\nsample). Not all studies\
    \ have feature metadata, if so\nthis can be ignored and not used. See doc for\
    \ PCL-\nDescription.txt"
  type: string
  inputBinding:
    prefix: --lastFeatureMetadata
- id: in_label
  doc: "The name of the metadata on which to perform\nsupervised methods"
  type: string
  inputBinding:
    prefix: --label
- id: in_stratify
  doc: The metatdata to stratify unsupervised analysis.
  type: string
  inputBinding:
    prefix: --stratify
- id: in_delim
  doc: The delimiter for the abundance table (default = TAB)
  type: string
  inputBinding:
    prefix: --delim
- id: in_feat_delim
  doc: "The delimiter for a feature name if it contains a\nconsensus sequence."
  type: string
  inputBinding:
    prefix: --featdelim
- id: in_logging
  doc: "Logging level which will be logged to a .log file with\nthe same name as the\
    \ strOutFile (but with a .log\nextension). Valid values are DEBUG, INFO, WARNING,\n\
    ERROR, or CRITICAL."
  type: File
  inputBinding:
    prefix: --logging
- id: in_checked
  doc: "Before analysis abundance files are checked and a new\nfile results which\
    \ analysis is perfromed on. The name\nof the checked file can be specified of\
    \ the default\nwill will be used (appending a -Checked to the end of\nthe file\
    \ name)."
  type: File
  inputBinding:
    prefix: --checked
- id: in_log_file
  doc: File path to save the logging file.
  type: File
  inputBinding:
    prefix: --logfile
- id: in_sup_input_file
  doc: "The file path for the input file for supervised\nmethods."
  type: File
  inputBinding:
    prefix: --supinputfile
- id: in_supp_red_file
  doc: "The file path for the predict file.\n"
  type: File
  inputBinding:
    prefix: --suppredfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MicroPITA.py
