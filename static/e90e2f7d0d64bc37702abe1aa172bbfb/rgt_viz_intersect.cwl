class: CommandLineTool
id: ../../../rgt_viz_intersect.cwl
inputs:
- id: file_name_reference
  doc: 'The file name of the reference Experimental Matrix. Multiple references are
    acceptable. (default: None)'
  type: boolean
  inputBinding:
    prefix: -r
- id: file_name_query
  doc: 'The file name of the query Experimental Matrix. Multiple queries are acceptable.
    (default: None)'
  type: boolean
  inputBinding:
    prefix: -q
- id: directory_name_output
  doc: 'The directory name for the output files. For example, project name. (default:
    None)'
  type: string
  inputBinding:
    prefix: -o
- id: title_shown_top
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    intersection_test)'
  type: boolean
  inputBinding:
    prefix: -t
- id: group_data_optional
  doc: "Group the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -g
- id: color_data_optional
  doc: "Color the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: regions)"
  type: boolean
  inputBinding:
    prefix: -c
- id: organism
  doc: 'Define the organism. (default: hg19)'
  type: boolean
  inputBinding:
    prefix: -organism
- id: bg
  doc: 'Define a BED file as background. If not defined, the background is whole genome
    according to the given organism. (default: None)'
  type: boolean
  inputBinding:
    prefix: -bg
- id: define_mode_outputs
  doc: "Define the mode of calculating intersection. 'count' outputs the number of\
    \ overlapped regions.'bp' outputs the coverage(basepair) of intersection. (default:\
    \ count)"
  type: boolean
  inputBinding:
    prefix: -m
- id: tc
  doc: "Define the threshold(in percentage) of reference length for intersection counting.\
    \ For example, '20' means that the query which overlaps more than 20% of reference\
    \ is counted as intersection. (default: False)"
  type: boolean
  inputBinding:
    prefix: -tc
- id: ex
  doc: "Define the extension(in bp) of reference length for intersection counting.\
    \ For example, '20' means that each region of reference is extended by 20 bp in\
    \ order to include proximal queries. (default: 0)"
  type: boolean
  inputBinding:
    prefix: -ex
- id: log
  doc: Set y axis of the plot in log scale.
  type: boolean
  inputBinding:
    prefix: -log
- id: color
  doc: 'Define the specific colors with the given column "color" in experimental matrix.
    The color should be in the format of matplotlib.colors. For example, "r" for red,
    "b" for blue, or "(100, 35, 138)" for RGB. (default: False)'
  type: boolean
  inputBinding:
    prefix: -color
- id: show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: s_test
  doc: 'Define the repetition time of random subregion test between reference and
    query. (default: 0)'
  type: boolean
  inputBinding:
    prefix: -stest
- id: mp
  doc: 'Define the number of cores for parallel computation. (default: 4)'
  type: boolean
  inputBinding:
    prefix: -mp
- id: pw
  doc: 'Define the width of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -pw
- id: ph
  doc: 'Define the height of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -ph
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- intersect
