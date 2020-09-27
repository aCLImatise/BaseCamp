class: CommandLineTool
id: run_lefse.py.cwl
inputs:
- id: in_set_file_textualform
  doc: "set the file for exporting the result (only concise textual\nform)"
  type: File
  inputBinding:
    prefix: -o
- id: in_set_value_anova
  doc: set the alpha value for the Anova test (default 0.05)
  type: double
  inputBinding:
    prefix: -a
- id: in_set_value_wilcoxon
  doc: set the alpha value for the Wilcoxon test (default 0.05)
  type: double
  inputBinding:
    prefix: -w
- id: in_set_threshold_absolute
  doc: "set the threshold on the absolute value of the logarithmic\nLDA score (default\
    \ 2.0)"
  type: double
  inputBinding:
    prefix: -l
- id: in_n_logs
  doc: max log ingluence of LDA coeff
  type: long
  inputBinding:
    prefix: --nlogs
- id: in_verbose
  doc: verbose execution (default 0)
  type: long
  inputBinding:
    prefix: --verbose
- id: in_wil_c
  doc: wheter to perform the Wicoxon step (default 1)
  type: long
  inputBinding:
    prefix: --wilc
- id: in_select_lda_svm
  doc: select LDA or SVM for effect size (default LDA)
  type: long
  inputBinding:
    prefix: -r
- id: in_svm_norm
  doc: "whether to normalize the data in [0,1] for SVM feature\nwaiting (default 1\
    \ strongly suggested)"
  type: long
  inputBinding:
    prefix: --svm_norm
- id: in_set_number_bootstrap
  doc: set the number of bootstrap iteration for LDA (default 30)
  type: long
  inputBinding:
    prefix: -b
- id: in_set_perform_only
  doc: "set whether perform the wilcoxon test only among the\nsubclasses with the\
    \ same name (default 0)"
  type: long
  inputBinding:
    prefix: -e
- id: in_ing_curtissapproach_default
  doc: "set whether perform the wilcoxon test ing the Curtis's\napproach [BETA VERSION]\
    \ (default 0)"
  type: long
  inputBinding:
    prefix: -c
- id: in_set_subsampling_value
  doc: "set the subsampling fraction value for each bootstrap\niteration (default\
    \ 0.66666)"
  type: double
  inputBinding:
    prefix: -f
- id: in_set_multiple_options
  doc: "set the multiple testing correction options. 0 no correction\n(more strict,\
    \ default), 1 correction for independent\ncomparisons, 2 correction for independent\
    \ comparison"
  type: string
  inputBinding:
    prefix: -s
- id: in_min_c
  doc: "minimum number of samples per subclass for performing\nwilcoxon test (default\
    \ 10)"
  type: long
  inputBinding:
    prefix: --min_c
- id: in_set_title_analysis
  doc: "set the title of the analysis (default input file without\nextension)"
  type: File
  inputBinding:
    prefix: -t
- id: in_multiclass_tasks_set
  doc: "(for multiclass tasks) set whether the test is performed in\na one-against-one\
    \ ( 1 - more strict!) or in a one-against-\nall setting ( 0 - less strict) (default\
    \ 0)\n"
  type: string
  inputBinding:
    prefix: -y
- id: in_input_file
  doc: the input file
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: the output file containing the data for the visualization
  type: string
  inputBinding:
    position: 1
- id: in_module
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_lefse.py
