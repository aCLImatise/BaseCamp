class: CommandLineTool
id: compare_categories.py.cwl
inputs:
- id: method
  doc: 'the statistical method to use. Valid options: adonis, anosim, bioenv, morans_i,
    mrpp, permanova, permdisp, dbrda [REQUIRED]'
  type: string
  inputBinding:
    prefix: --method
- id: input_dm
  doc: 'the input distance matrix. WARNING: Only symmetric, hollow distance matrices
    may be used as input. Asymmetric distance matrices, such as those obtained by
    the UniFrac Gain metric (i.e. beta_diversity.py -m unifrac_g), should not be used
    as input [REQUIRED]'
  type: string
  inputBinding:
    prefix: --input_dm
- id: mapping_file
  doc: the metadata mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_file
- id: categories
  doc: 'a comma-delimited list of categories from the mapping file. Note: all methods
    except for BIO-ENV accept just a single category. If multiple categories are provided,
    only the first will be used [REQUIRED]'
  type: string
  inputBinding:
    prefix: --categories
- id: output_dir
  doc: path to the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_categories.py
