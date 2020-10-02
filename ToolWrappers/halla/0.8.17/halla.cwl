class: CommandLineTool
id: halla.cwl
inputs:
- id: in_first_file_tabdelimited
  doc: "first file: Tab-delimited text input file, one row per feature, one column\
    \ per measurement\n[REQUIRED]"
  type: long
  inputBinding:
    prefix: -X
- id: in_second_file_tabdelimited
  doc: "second file: Tab-delimited text input file, one row per feature, one column\
    \ per measurement\n[default = the first file (-X)]"
  type: long
  inputBinding:
    prefix: -Y
- id: in_output
  doc: "directory to write output files\n[REQUIRED]"
  type: Directory
  inputBinding:
    prefix: --output
- id: in__qvalue_overall
  doc: "<.1>, --q-value <.1>\nq-value for overall significance tests (cut-off for\
    \ false discovery rate)\n[default = 0.1]"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_fnt
  doc: "<.25>           Estimated False Negative Tolerance in block association\n\
    [default = 0.25]"
  type: boolean
  inputBinding:
    prefix: --fnt
- id: in_permutation
  doc: "permutation function\n[default = none for Spearman and Pearson and gpd for\
    \ other]"
  type: string
  inputBinding:
    prefix: --permutation
- id: in_descending
  doc: "descending approach\n[default = HAllA for hierarchical all-against-all]"
  type: string
  inputBinding:
    prefix: --descending
- id: in_iterations
  doc: "iterations for nonparametric significance testing (permutation test)\n[default\
    \ = 1000]"
  type: long
  inputBinding:
    prefix: --iterations
- id: in_metric
  doc: "metric to be used for similarity measurement\n[default = '']"
  type: string
  inputBinding:
    prefix: --metric
- id: in_fdr
  doc: "approach for FDR correction\n[default = bh]"
  type: string
  inputBinding:
    prefix: --fdr
- id: in_verbose
  doc: additional output is printed
  type: string
  inputBinding:
    prefix: --verbose
- id: in_diagnostics_plot
  doc: Diagnostics plot for associations
  type: boolean
  inputBinding:
    prefix: --diagnostics-plot
- id: in_discretizing
  doc: "approach for discretizing continuous data\n[default = equal-freq]"
  type: string
  inputBinding:
    prefix: --discretizing
- id: in_linkage
  doc: The method to be used in linkage hierarchical clustering.
  type: string
  inputBinding:
    prefix: --linkage
- id: in_generate_one_null_samples
  doc: Use one null distribution for permutation test
  type: boolean
  inputBinding:
    prefix: --generate-one-null-samples
- id: in_header
  doc: the input files contain a header line
  type: boolean
  inputBinding:
    prefix: --header
- id: in_format_feature_names
  doc: Replaces special characters and for OTUs separated  by | uses the known end
    of a clade
  type: boolean
  inputBinding:
    prefix: --format-feature-names
- id: in_nproc
  doc: "the number of processing units available\n[default = 1]"
  type: long
  inputBinding:
    prefix: --nproc
- id: in_nb_in
  doc: "the number of bins for discretizing\n[default = None]"
  type: long
  inputBinding:
    prefix: --nbin
- id: in_seed
  doc: "a seed number to make the random permutation reproducible\n[default = 0,and\
    \ -1 for random number]"
  type: long
  inputBinding:
    prefix: --seed
- id: in_entropy
  doc: "Minimum entropy threshold to filter features with low information\n[default\
    \ = 0.5]"
  type: double
  inputBinding:
    prefix: --entropy
- id: in_entropy_one
  doc: "Minimum entropy threshold for the first dataset\n[default = None]"
  type: long
  inputBinding:
    prefix: --entropy1
- id: in_entropy_two
  doc: "Minimum entropy threshold for the second dataset\n[default = None]"
  type: long
  inputBinding:
    prefix: --entropy2
- id: in_missing_char
  doc: "defines missing characters\n[default = '']"
  type: string
  inputBinding:
    prefix: --missing-char
- id: in_fill_missing
  doc: "defines missing strategy to fill missing data.\nFor categorical data puts\
    \ all missing data in one new category."
  type: string
  inputBinding:
    prefix: --fill-missing
- id: in_missing_data_category
  doc: To count the missing data as a category
  type: boolean
  inputBinding:
    prefix: --missing-data-category
- id: in_write_hypothesis_tree
  doc: To write levels of hypothesis tree in the file
  type: boolean
  inputBinding:
    prefix: --write-hypothesis-tree
- id: in_data_transformation_method
  doc: "{log,sqrt,arcsin,arcsinh,}, --transform {log,sqrt,arcsin,arcsinh,}\ndata transformation\
    \ method\n[default = '' ]\n"
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "directory to write output files\n[REQUIRED]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- halla
