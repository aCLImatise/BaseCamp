class: CommandLineTool
id: categorize_by_function.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_ignore
  doc: "Ignore the comma separated list of names. For\ninstance, specifying\n--ignore_unknown=unknown,unclassified\
    \ will ignore\nthose labels while collapsing. The default is to not\nignore anything.\
    \ [default: none]"
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_format_tab_delimited
  doc: "output the predicted metagenome table in tab-delimited\nformat [default: False]"
  type: boolean?
  inputBinding:
    prefix: --format_tab_delimited
- id: in_input_fp
  doc: the predicted metagenome table [REQUIRED]
  type: string?
  inputBinding:
    prefix: --input_fp
- id: in_output_fp
  doc: the resulting table [REQUIRED]
  type: string?
  inputBinding:
    prefix: --output_fp
- id: in_metadata_category
  doc: "the metadata category that describes the hierarchy\n(e.g. KEGG_Pathways, COG_Category,\
    \ etc.). Note: RFAM\npredictions can not be collapsed because there are no\ncategories\
    \ to group them into. [REQUIRED]"
  type: string?
  inputBinding:
    prefix: --metadata_category
- id: in_level
  doc: "the level in the hierarchy to collapse to. A value of\n0 is not allowed, a\
    \ value of 1 is the highest level,\nand any higher value nears the leaves of the\n\
    hierarchy. For instance, if the hierarchy contains 4\nlevels, specifying 3 would\
    \ collapse at one level above\nbeing fully specified. [REQUIRED]\n"
  type: long?
  inputBinding:
    prefix: --level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- categorize_by_function.py
