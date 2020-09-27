class: CommandLineTool
id: evaluate_test_datasets.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_field_order
  doc: "pass comma-separated categories, in the order they\nappear in file names.\
    \   Categories are \"file_type\",\"pr\nediction_method\",\"weighting_method\"\
    ,\"holdout_method\"\n(randomization vs. holdout),\"distance\",and \"organism\"\
    .\nExample:  \"-f file_type,test_method,asr_method\nspecifies that files will\
    \ be in the form:\npredict_traits--distance_exclusion--wagner.  Any\nunspecified\
    \ values are set to \"not_specified\".\n[default: file_type,prediction_method,weighting_method\n\
    ,holdout_method,distance,organism]"
  type: File
  inputBinding:
    prefix: --field_order
- id: in_pool_by
  doc: "pass comma-separated categories to pool results by\nthose metadata categories.\
    \ Valid categories are:\nholdout_method,\nprediction_method,weighting_method,distance\
    \ and\norganism. For example, pass \"distance\" to output\nresults pooled by holdout\
    \ distance in addition to\nholdout method and prediction method  [default:\ndistance]"
  type: string
  inputBinding:
    prefix: --pool_by
- id: in_trait_table_dir
  doc: "the input trait table directory (files in biom format)\n[REQUIRED]"
  type: Directory
  inputBinding:
    prefix: --trait_table_dir
- id: in_exp_trait_table_dir
  doc: "the input expected trait table directory (files in\nbiom format) [REQUIRED]"
  type: Directory
  inputBinding:
    prefix: --exp_trait_table_dir
- id: in_output_dir
  doc: "the output directory [REQUIRED]\n"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_character
  doc: 'Example usage: '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "the output directory [REQUIRED]\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- evaluate_test_datasets.py
