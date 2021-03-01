class: CommandLineTool
id: koeken.py.cwl
inputs:
- id: in_debug
  doc: Enable debugging
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input
  doc: "Location of the OTU Table for main analysis. (Must be\n.biom format)"
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Location of the folder to place all resulting files.\nIf folder does not exist,\
    \ the program will create it."
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_map
  doc: "Location of the mapping file associated with OTU\nTable."
  type: File?
  inputBinding:
    prefix: --map
- id: in_level
  doc: "Level for which to use for summarize_taxa.py. [default\n= 6]"
  type: string?
  inputBinding:
    prefix: --level
- id: in_class
  doc: "Location of the OTU Table for main analysis. (Must be\n.biom format)"
  type: string?
  inputBinding:
    prefix: --class
- id: in_subclass
  doc: Directory to place all the files.
  type: Directory?
  inputBinding:
    prefix: --subclass
- id: in_subject
  doc: "Only change if your Sample-ID column names differs.\n[default] = #SampleID."
  type: string?
  inputBinding:
    prefix: --subject
- id: in_pval
  doc: Change alpha value for the Anova test (default 0.05)
  type: double?
  inputBinding:
    prefix: --pval
- id: in_effect
  doc: "Change the cutoff for logarithmic LDA score (default\n2.0)."
  type: double?
  inputBinding:
    prefix: --effect
- id: in_strict
  doc: "Change the strictness of the comparisons. Can be\nchanged to less strict (1).\
    \ [default = 0](more-\nstrict)."
  type: string?
  inputBinding:
    prefix: --strict
- id: in_compare
  doc: "Which groups should be kept to be compared against one\nanother. [default\
    \ = all factors]"
  type: string[]
  inputBinding:
    prefix: --compare
- id: in_split
  doc: "The name of the timepoint variable in you mapping\nfile. This variable will\
    \ be used to split the table\nfor each value in this variable."
  type: File?
  inputBinding:
    prefix: --split
- id: in_clade
  doc: "Plot Lefse Cladogram for each output time point.\nOutputs are placed in a\
    \ new folder created in the\nlefse results location."
  type: Directory?
  inputBinding:
    prefix: --clade
- id: in_image
  doc: "Set the file type for the image create when using\ncladogram setting"
  type: string?
  inputBinding:
    prefix: --image
- id: in_dpi
  doc: Set DPI resolution for cladogram
  type: string?
  inputBinding:
    prefix: --dpi
- id: in_pic_rust
  doc: "Run analysis with PICRUSt biom file. Must use the\ncateogirze by function\
    \ level 3. Next updates will\nreflect the difference levels.\n"
  type: boolean?
  inputBinding:
    prefix: --picrust
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_clade
  doc: "Plot Lefse Cladogram for each output time point.\nOutputs are placed in a\
    \ new folder created in the\nlefse results location."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_clade)
hints: []
cwlVersion: v1.1
baseCommand:
- koeken.py
