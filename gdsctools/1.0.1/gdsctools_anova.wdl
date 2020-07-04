version 1.0

task GdsctoolsAnova {
  input {
    String? input_ic_five_zero
    String? input_features
    String? input_drug_decode
    Directory? output_directory
    Boolean? verbose
    Boolean? do_not_open_report
    String? drug
    String? feature
    Boolean? print_drug_names
    Boolean? print_feature_names
    Boolean? print_tissue_names
    String? tissue
    String? fdr_threshold
    Boolean? exclude_msi
    String? save_settings
    String? read_settings
    Boolean? summary
    Boolean? test
    Boolean? no_html
    String one_dot
    String analyse
    String all
    String ic_five_zeros
    String data
    String contained
    String in
    File filename
    String var_27
    String open
    String var_29
    String html
    String page
  }
  command <<<
    gdsctools_anova \
      ~{one_dot} \
      ~{analyse} \
      ~{all} \
      ~{ic_five_zeros} \
      ~{data} \
      ~{contained} \
      ~{in} \
      ~{filename} \
      ~{var_27} \
      ~{open} \
      ~{var_29} \
      ~{html} \
      ~{page} \
      ~{if defined(input_ic_five_zero) then ("--input-ic50 " +  '"' + input_ic_five_zero + '"') else ""} \
      ~{if defined(input_features) then ("--input-features " +  '"' + input_features + '"') else ""} \
      ~{if defined(input_drug_decode) then ("--input-drug-decode " +  '"' + input_drug_decode + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--do-not-open-report" false="" do_not_open_report} \
      ~{if defined(drug) then ("--drug " +  '"' + drug + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{true="--print-drug-names" false="" print_drug_names} \
      ~{true="--print-feature-names" false="" print_feature_names} \
      ~{true="--print-tissue-names" false="" print_tissue_names} \
      ~{if defined(tissue) then ("--tissue " +  '"' + tissue + '"') else ""} \
      ~{if defined(fdr_threshold) then ("--FDR-threshold " +  '"' + fdr_threshold + '"') else ""} \
      ~{true="--exclude-msi" false="" exclude_msi} \
      ~{if defined(save_settings) then ("--save-settings " +  '"' + save_settings + '"') else ""} \
      ~{if defined(read_settings) then ("--read-settings " +  '"' + read_settings + '"') else ""} \
      ~{true="--summary" false="" summary} \
      ~{true="--test" false="" test} \
      ~{true="--no-html" false="" no_html}
  >>>
  parameter_meta {
    input_ic_five_zero: "A file in TSV format with IC50s. First column should be the COSMIC identifiers Following columns contain the IC50s for a set of drugs. The header must be COSMIC_ID, Drug_1_IC50, Drug_2_IC50, ..."
    input_features: "A matrix of genomic features. One column with COSMIC identifiers should match those from the IC50s matrix. Then columns named TISSUE_FACTOR, MSI_FACTOR, MEDIA_FACTOR should be provided. Finally, other columns will be considered as genomic features (e.g., mutation)"
    input_drug_decode: "a decoder file"
    output_directory: "directory where to save images and HTML files."
    verbose: "verbose option."
    do_not_open_report: "By default, opens the index.html page. Set this option if you do not want to open the html page automatically."
    drug: "The name of a valid drug identifier to be found in the header of the IC50 matrix"
    feature: "The name of a valid feature to be found in the Genomic Feature matrix"
    print_drug_names: "Print the drug names"
    print_feature_names: "Print the features names"
    print_tissue_names: "Print the unique tissue names"
    tissue: "The name of a specific cancer type i.e., tissue to restrict the analysis to."
    fdr_threshold: "FDR (False discovery Rate) used in the multitesting analysis to correct the pvalues"
    exclude_msi: "Include msi factor in the analysis"
    save_settings: "Save settings into a json file"
    read_settings: "Read settings from a json file. Type --save-settings <filename.json> to create an example. Note that the FDR-threshold and include_MSI_factor will be replaced if --exclude-msi or fdr-threshold are used."
    summary: "Print summary about the data (e.g., tissue)"
    test: "Use a small IC50 data set and run the one-drug-one- feature analyse with a couple of unit tests."
    no_html: "If set, no images or HTML are created. For testing only"
    one_dot: ""
    analyse: ""
    all: ""
    ic_five_zeros: ""
    data: ""
    contained: ""
    in: ""
    filename: ""
    var_27: ""
    open: ""
    var_29: ""
    html: ""
    page: ""
  }
}