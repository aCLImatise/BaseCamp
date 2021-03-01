class: CommandLineTool
id: rgt_viz_bed_profile.cwl
inputs:
- id: in_input_experimental_matrix
  doc: "Input experimental matrix or Input BED file or Input\ndirectory which contains\
    \ BED files"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_title_shown_default
  doc: "The title shown on the top of the plot and also the folder\nname. (default:\
    \ bed_profile)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_organism
  doc: 'Define the organism. (default: None)'
  type: boolean?
  inputBinding:
    prefix: -organism
- id: in_biotype
  doc: Define the directory for biotype BED files.
  type: boolean?
  inputBinding:
    prefix: -biotype
- id: in_repeats
  doc: Define the directory for repeats BED files.
  type: boolean?
  inputBinding:
    prefix: -repeats
- id: in_gen_posi
  doc: "Define the directory for the generic position BED files.\n(exons, introns,\
    \ and intergenic regions)"
  type: boolean?
  inputBinding:
    prefix: -genposi
- id: in_labels
  doc: Define the labels for more BED sets
  type: boolean?
  inputBinding:
    prefix: -labels
- id: in_sources
  doc: "Define the directories for more BED sets corresponding to\nthe labels"
  type: boolean?
  inputBinding:
    prefix: -sources
- id: in_strand
  doc: "Define whether to perform strand-specific comparison for\neach reference corresponding\
    \ to the labels (T or F)"
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_other
  doc: "Define whether to count \"else\" for each reference\ncorresponding to the\
    \ labels (T or F)"
  type: boolean?
  inputBinding:
    prefix: -other
- id: in_background
  doc: Add the background to the first row of the figures (T or F)
  type: boolean?
  inputBinding:
    prefix: -background
- id: in_coverage
  doc: "Calculate the overlapping region by coverage in bp instead\nof simple counting"
  type: boolean?
  inputBinding:
    prefix: -coverage
- id: in_test
  doc: test script
  type: boolean?
  inputBinding:
    prefix: -test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_name_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- bed_profile
