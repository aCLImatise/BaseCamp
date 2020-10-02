class: CommandLineTool
id: rgt_viz_intersect.cwl
inputs:
- id: in_file_name_reference
  doc: "The file name of the reference Experimental Matrix. Multiple\nreferences are\
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
- id: in_directory_name_output
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_title_shown_top
  doc: "The title shown on the top of the plot and also the folder\nname. (default:\
    \ intersection_test)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_group_data_matrix
  doc: "Group the data by any optional column (for example, 'cell') of\nexperimental\
    \ matrix, or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_color_data_optional
  doc: "Color the data by any optional column (for example, 'cell') of\nexperimental\
    \ matrix, or None. (default: regions)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_organism
  doc: 'Define the organism. (default: hg19)'
  type: boolean
  inputBinding:
    prefix: -organism
- id: in_bg
  doc: "Define a BED file as background. If not defined, the\nbackground is whole\
    \ genome according to the given organism.\n(default: None)"
  type: boolean
  inputBinding:
    prefix: -bg
- id: in_define_mode_outputs
  doc: "Define the mode of calculating intersection. 'count' outputs\nthe number of\
    \ overlapped regions.'bp' outputs the\ncoverage(basepair) of intersection. (default:\
    \ count)"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_tc
  doc: "Define the threshold(in percentage) of reference length for\nintersection\
    \ counting. For example, '20' means that the query\nwhich overlaps more than 20%\
    \ of reference is counted as\nintersection. (default: False)"
  type: boolean
  inputBinding:
    prefix: -tc
- id: in_ex
  doc: "Define the extension(in bp) of reference length for\nintersection counting.\
    \ For example, '20' means that each\nregion of reference is extended by 20 bp\
    \ in order to include\nproximal queries. (default: 0)"
  type: boolean
  inputBinding:
    prefix: -ex
- id: in_log
  doc: Set y axis of the plot in log scale.
  type: boolean
  inputBinding:
    prefix: -log
- id: in_color
  doc: "Define the specific colors with the given column \"color\" in\nexperimental\
    \ matrix. The color should be in the format of\nmatplotlib.colors. For example,\
    \ \"r\" for red, \"b\" for blue, or\n\"(100, 35, 138)\" for RGB. (default: False)"
  type: boolean
  inputBinding:
    prefix: -color
- id: in_show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: in_s_test
  doc: "Define the repetition time of random subregion test between\nreference and\
    \ query. (default: 0)"
  type: boolean
  inputBinding:
    prefix: -stest
- id: in_mp
  doc: "Define the number of cores for parallel computation. (default:\n4)"
  type: boolean
  inputBinding:
    prefix: -mp
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
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_name_output)
cwlVersion: v1.1
baseCommand:
- rgt-viz
- intersect
