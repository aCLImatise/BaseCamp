class: CommandLineTool
id: MicroPITA.py.cwl
inputs:
- id: num
  doc: The number of samples to select with unsupervised methodology. (An integer
    greater than 0.).
  type: string
  inputBinding:
    prefix: --num
- id: method
  doc: Select techniques listed one after another.
  type: string
  inputBinding:
    prefix: --method
- id: alpha
  doc: A key word for any PyCogent supplied alpha diveristy metric (Richness, evenness,
    or diversity). Please supply an unnormalized (counts) abundance table for these
    metrics. Metrics include heip_e fisher_alpha equitability menhinick simpson robbins
    reciprocal_simpson chao1 simpson_e margalef berger_parker_d observed_species brillouin_d
    mcintosh_d mcintosh_e ACE strong dominance shannon michaelis_menten_fit.
  type: string
  inputBinding:
    prefix: --alpha
- id: beta
  doc: A key word for any PyCogent supplied beta diversity metric. Metrics include
    chebyshev canberra sqeuclidean braycurtis euclidean cosine hamming correlation
    cityblock unifrac_unweighted unifrac_weighted.
  type: string
  inputBinding:
    prefix: --beta
- id: alpha_meta
  doc: Metric in the pcl file which has custom alpha diversity measurements to use
    with the highest diversity sampling criteria. Should be a number between 0.0 and
    1.0 with 1.0 meaning most diverse.
  type: string
  inputBinding:
    prefix: --alphameta
- id: beta_matrix
  doc: Precalculated beta-diversity matrix to be used in the representative sampling
    criteria. Should be a number between 0.0 and 1.0 with 1.0 meaning most dissimilar.
  type: string
  inputBinding:
    prefix: --betamatrix
- id: tree
  doc: Tree for phylogenetic when selecting custom beta- diversities in the representative
    sampling criteria.
  type: string
  inputBinding:
    prefix: --tree
- id: envr
  doc: File describing the smaple environments; for use with Unifrac distance metrics.
  type: string
  inputBinding:
    prefix: --envr
- id: invert_diversity
  doc: When using this flag, the diversity will be inverted (multiplicative inverse)
    before ranking in the highest diversity method. Recommended to use with dominance,
    menhinick, reciprocal_simpson, berger_parker_d, mcintosh_e, simpson_e, strong
    and any metric where 0 indicates most diverse.
  type: boolean
  inputBinding:
    prefix: --invertDiversity
- id: id
  doc: The row in the abundance file that is the sample name/id row. Should be the
    sample name/Id in first column of the row.
  type: string
  inputBinding:
    prefix: --id
- id: last_meta
  doc: The row in the abundance file that is the sample name/id row. Should be the
    metadata name/Id in first column of the metadta row.
  type: string
  inputBinding:
    prefix: --lastmeta
- id: feature_method
  doc: The ranking method used to select targeted features.
  type: string
  inputBinding:
    prefix: --feature_method
- id: targets
  doc: A file containing taxa/OTUs/clades to be used in targeted feature sampling
    criteria.
  type: string
  inputBinding:
    prefix: --targets
- id: last_feature_metadata
  doc: The last metadata describing a (bug) feature (not sample). Not all studies
    have feature metadata, if so this can be ignored and not used. See doc for PCL-
    Description.txt
  type: string
  inputBinding:
    prefix: --lastFeatureMetadata
- id: label
  doc: The name of the metadata on which to perform supervised methods
  type: string
  inputBinding:
    prefix: --label
- id: stratify
  doc: The metatdata to stratify unsupervised analysis.
  type: string
  inputBinding:
    prefix: --stratify
- id: delim
  doc: The delimiter for the abundance table (default = TAB)
  type: string
  inputBinding:
    prefix: --delim
- id: feat_delim
  doc: The delimiter for a feature name if it contains a consensus sequence.
  type: string
  inputBinding:
    prefix: --featdelim
- id: logging
  doc: Logging level which will be logged to a .log file with the same name as the
    strOutFile (but with a .log extension). Valid values are DEBUG, INFO, WARNING,
    ERROR, or CRITICAL.
  type: string
  inputBinding:
    prefix: --logging
- id: checked
  doc: Before analysis abundance files are checked and a new file results which analysis
    is perfromed on. The name of the checked file can be specified of the default
    will will be used (appending a -Checked to the end of the file name).
  type: string
  inputBinding:
    prefix: --checked
- id: log_file
  doc: File path to save the logging file.
  type: string
  inputBinding:
    prefix: --logfile
- id: sup_input_file
  doc: The file path for the input file for supervised methods.
  type: string
  inputBinding:
    prefix: --supinputfile
- id: supp_red_file
  doc: The file path for the predict file.
  type: string
  inputBinding:
    prefix: --suppredfile
outputs: []
cwlVersion: v1.1
baseCommand:
- MicroPITA.py
