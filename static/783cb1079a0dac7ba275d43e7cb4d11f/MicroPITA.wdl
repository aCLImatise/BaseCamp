version 1.0

task MicroPITA.py {
  input {
    String? num
    String? method
    String? alpha
    String? beta
    String? alpha_meta
    String? beta_matrix
    String? tree
    String? envr
    Boolean? invert_diversity
    String? id
    String? last_meta
    String? feature_method
    String? targets
    String? last_feature_metadata
    String? label
    String? stratify
    String? delim
    String? feat_delim
    String? logging
    String? checked
    String? log_file
    String? sup_input_file
    String? supp_red_file
  }
  command <<<
    MicroPITA.py \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(alpha_meta) then ("--alphameta " +  '"' + alpha_meta + '"') else ""} \
      ~{if defined(beta_matrix) then ("--betamatrix " +  '"' + beta_matrix + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(envr) then ("--envr " +  '"' + envr + '"') else ""} \
      ~{true="--invertDiversity" false="" invert_diversity} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(last_meta) then ("--lastmeta " +  '"' + last_meta + '"') else ""} \
      ~{if defined(feature_method) then ("--feature_method " +  '"' + feature_method + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(last_feature_metadata) then ("--lastFeatureMetadata " +  '"' + last_feature_metadata + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(stratify) then ("--stratify " +  '"' + stratify + '"') else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(feat_delim) then ("--featdelim " +  '"' + feat_delim + '"') else ""} \
      ~{if defined(logging) then ("--logging " +  '"' + logging + '"') else ""} \
      ~{if defined(checked) then ("--checked " +  '"' + checked + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(sup_input_file) then ("--supinputfile " +  '"' + sup_input_file + '"') else ""} \
      ~{if defined(supp_red_file) then ("--suppredfile " +  '"' + supp_red_file + '"') else ""}
  >>>
  parameter_meta {
    num: "The number of samples to select with unsupervised methodology. (An integer greater than 0.)."
    method: "Select techniques listed one after another."
    alpha: "A key word for any PyCogent supplied alpha diveristy metric (Richness, evenness, or diversity). Please supply an unnormalized (counts) abundance table for these metrics. Metrics include heip_e fisher_alpha equitability menhinick simpson robbins reciprocal_simpson chao1 simpson_e margalef berger_parker_d observed_species brillouin_d mcintosh_d mcintosh_e ACE strong dominance shannon michaelis_menten_fit."
    beta: "A key word for any PyCogent supplied beta diversity metric. Metrics include chebyshev canberra sqeuclidean braycurtis euclidean cosine hamming correlation cityblock unifrac_unweighted unifrac_weighted."
    alpha_meta: "Metric in the pcl file which has custom alpha diversity measurements to use with the highest diversity sampling criteria. Should be a number between 0.0 and 1.0 with 1.0 meaning most diverse."
    beta_matrix: "Precalculated beta-diversity matrix to be used in the representative sampling criteria. Should be a number between 0.0 and 1.0 with 1.0 meaning most dissimilar."
    tree: "Tree for phylogenetic when selecting custom beta- diversities in the representative sampling criteria."
    envr: "File describing the smaple environments; for use with Unifrac distance metrics."
    invert_diversity: "When using this flag, the diversity will be inverted (multiplicative inverse) before ranking in the highest diversity method. Recommended to use with dominance, menhinick, reciprocal_simpson, berger_parker_d, mcintosh_e, simpson_e, strong and any metric where 0 indicates most diverse."
    id: "The row in the abundance file that is the sample name/id row. Should be the sample name/Id in first column of the row."
    last_meta: "The row in the abundance file that is the sample name/id row. Should be the metadata name/Id in first column of the metadta row."
    feature_method: "The ranking method used to select targeted features."
    targets: "A file containing taxa/OTUs/clades to be used in targeted feature sampling criteria."
    last_feature_metadata: "The last metadata describing a (bug) feature (not sample). Not all studies have feature metadata, if so this can be ignored and not used. See doc for PCL- Description.txt"
    label: "The name of the metadata on which to perform supervised methods"
    stratify: "The metatdata to stratify unsupervised analysis."
    delim: "The delimiter for the abundance table (default = TAB)"
    feat_delim: "The delimiter for a feature name if it contains a consensus sequence."
    logging: "Logging level which will be logged to a .log file with the same name as the strOutFile (but with a .log extension). Valid values are DEBUG, INFO, WARNING, ERROR, or CRITICAL."
    checked: "Before analysis abundance files are checked and a new file results which analysis is perfromed on. The name of the checked file can be specified of the default will will be used (appending a -Checked to the end of the file name)."
    log_file: "File path to save the logging file."
    sup_input_file: "The file path for the input file for supervised methods."
    supp_red_file: "The file path for the predict file."
  }
}