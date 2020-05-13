class: CommandLineTool
id: gdsctools_anova.cwl
inputs:
- id: input_ic50
  doc: A file in TSV format with IC50s. First column should be the COSMIC identifiers
    Following columns contain the IC50s for a set of drugs. The header must be COSMIC_ID,
    Drug_1_IC50, Drug_2_IC50, ...
  type: string
  inputBinding:
    prefix: --input-ic50
- id: input_features
  doc: A matrix of genomic features. One column with COSMIC identifiers should match
    those from the IC50s matrix. Then columns named TISSUE_FACTOR, MSI_FACTOR, MEDIA_FACTOR
    should be provided. Finally, other columns will be considered as genomic features
    (e.g., mutation)
  type: string
  inputBinding:
    prefix: --input-features
- id: input_drug_decode
  doc: a decoder file
  type: string
  inputBinding:
    prefix: --input-drug-decode
- id: output_directory
  doc: directory where to save images and HTML files.
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: verbose
  doc: verbose option.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: do_not_open_report
  doc: By default, opens the index.html page. Set this option if you do not want to
    open the html page automatically.
  type: boolean
  inputBinding:
    prefix: --do-not-open-report
- id: drug
  doc: The name of a valid drug identifier to be found in the header of the IC50 matrix
  type: string
  inputBinding:
    prefix: --drug
- id: feature
  doc: The name of a valid feature to be found in the Genomic Feature matrix
  type: string
  inputBinding:
    prefix: --feature
- id: print_drug_names
  doc: Print the drug names
  type: boolean
  inputBinding:
    prefix: --print-drug-names
- id: print_feature_names
  doc: Print the features names
  type: boolean
  inputBinding:
    prefix: --print-feature-names
- id: print_tissue_names
  doc: Print the unique tissue names
  type: boolean
  inputBinding:
    prefix: --print-tissue-names
- id: tissue
  doc: The name of a specific cancer type i.e., tissue to restrict the analysis to.
  type: string
  inputBinding:
    prefix: --tissue
- id: fdr_threshold
  doc: FDR (False discovery Rate) used in the multitesting analysis to correct the
    pvalues
  type: string
  inputBinding:
    prefix: --FDR-threshold
- id: exclude_msi
  doc: Include msi factor in the analysis
  type: boolean
  inputBinding:
    prefix: --exclude-msi
- id: save_settings
  doc: Save settings into a json file
  type: string
  inputBinding:
    prefix: --save-settings
- id: read_settings
  doc: Read settings from a json file. Type --save-settings <filename.json> to create
    an example. Note that the FDR-threshold and include_MSI_factor will be replaced
    if --exclude-msi or fdr-threshold are used.
  type: string
  inputBinding:
    prefix: --read-settings
- id: summary
  doc: Print summary about the data (e.g., tissue)
  type: boolean
  inputBinding:
    prefix: --summary
- id: test
  doc: Use a small IC50 data set and run the one-drug-one- feature analyse with a
    couple of unit tests.
  type: boolean
  inputBinding:
    prefix: --test
- id: no_html
  doc: If set, no images or HTML are created. For testing only
  type: boolean
  inputBinding:
    prefix: --no-html
outputs: []
cwlVersion: v1.1
baseCommand:
- gdsctools_anova
