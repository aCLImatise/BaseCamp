class: CommandLineTool
id: rgt_viz_combinatorial.cwl
inputs:
- id: in_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_file_name_references
  doc: "The file name of the reference Experimental Matrix.\nMultiple references are\
    \ acceptable. (default: None)"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_file_name_query
  doc: "The file name of the query Experimental Matrix. Multiple\nqueries are acceptable.\
    \ (default: None)"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_title_shown_thefolder
  doc: "The title shown on the top of the plot and also the\nfolder name. (default:\
    \ combinatorial_test)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_group_data_default
  doc: "Group the data by any optional column (for example,\n'cell') of experimental\
    \ matrix, or None. (default: None)"
  type: string
  inputBinding:
    prefix: -g
- id: in_color_data_optional
  doc: "Color the data by any optional column (for example,\n'cell') of experimental\
    \ matrix, or None. (default:\nregions)"
  type: string
  inputBinding:
    prefix: -c
- id: in_organism
  doc: 'Define the organism. (default: hg19)'
  type: long
  inputBinding:
    prefix: -organism
- id: in_bg
  doc: "Define a BED file as background. If not defined, the\nbackground is whole\
    \ genome according to the given\norganism. (default: None)"
  type: File
  inputBinding:
    prefix: -bg
- id: in_define_mode_outputs
  doc: "Define the mode of calculating intersection. 'count'\noutputs the number of\
    \ overlapped regions.'bp' outputs\nthe coverage(basepair) of intersection. (default:\
    \ count)"
  type: string
  inputBinding:
    prefix: -m
- id: in_tc
  doc: "Define the threshold(in percentage) of reference length\nfor intersection\
    \ counting. For example, '20' means that\nthe query which overlaps more than 20%\
    \ of reference is\ncounted as intersection. (default: False)"
  type: long
  inputBinding:
    prefix: -tc
- id: in_ex
  doc: "Define the extension(in percentage) of reference length\nfor intersection\
    \ counting. For example, '20' means that\neach region of reference is extended\
    \ by 20% in order to\ninclude proximal queries. (default: 0)"
  type: long
  inputBinding:
    prefix: -ex
- id: in_log
  doc: 'Set y axis of the plot in log scale. (default: False)'
  type: boolean
  inputBinding:
    prefix: -log
- id: in_color
  doc: "Define the specific colors with the given column \"color\"\nin experimental\
    \ matrix. The color should be in the\nformat of matplotlib.colors. For example,\
    \ \"r\" for red,\n\"b\" for blue, or \"(100, 35, 138)\" for RGB. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: -color
- id: in_venn
  doc: "Show the Venn diagram of the combinatorials of\nreferences. (default: False)"
  type: boolean
  inputBinding:
    prefix: -venn
- id: in_show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: in_s_test
  doc: "Define the repetition time of random subregion test\nbetween reference and\
    \ query. (default: 0)"
  type: long
  inputBinding:
    prefix: -stest
- id: in_pw
  doc: 'Define the width of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -pw
- id: in_ph
  doc: 'Define the height of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -ph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_name_output)
cwlVersion: v1.1
baseCommand:
- rgt-viz
- combinatorial
