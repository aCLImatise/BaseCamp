class: CommandLineTool
id: rgt_viz_combinatorial.cwl
inputs:
- id: o
  doc: 'The directory name for the output files. For example, project name. (default:
    None)'
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: 'The file name of the reference Experimental Matrix. Multiple references are
    acceptable. (default: None)'
  type: boolean
  inputBinding:
    prefix: -r
- id: q
  doc: 'The file name of the query Experimental Matrix. Multiple queries are acceptable.
    (default: None)'
  type: boolean
  inputBinding:
    prefix: -q
- id: t
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    combinatorial_test)'
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: "Group the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: None)"
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: "Color the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: regions)"
  type: string
  inputBinding:
    prefix: -c
- id: organism
  doc: 'Define the organism. (default: hg19)'
  type: string
  inputBinding:
    prefix: -organism
- id: bg
  doc: 'Define a BED file as background. If not defined, the background is whole genome
    according to the given organism. (default: None)'
  type: string
  inputBinding:
    prefix: -bg
- id: m
  doc: "Define the mode of calculating intersection. 'count' outputs the number of\
    \ overlapped regions.'bp' outputs the coverage(basepair) of intersection. (default:\
    \ count)"
  type: string
  inputBinding:
    prefix: -m
- id: tc
  doc: "Define the threshold(in percentage) of reference length for intersection counting.\
    \ For example, '20' means that the query which overlaps more than 20% of reference\
    \ is counted as intersection. (default: False)"
  type: string
  inputBinding:
    prefix: -tc
- id: ex
  doc: "Define the extension(in percentage) of reference length for intersection counting.\
    \ For example, '20' means that each region of reference is extended by 20% in\
    \ order to include proximal queries. (default: 0)"
  type: string
  inputBinding:
    prefix: -ex
- id: log
  doc: 'Set y axis of the plot in log scale. (default: False)'
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
- id: venn
  doc: 'Show the Venn diagram of the combinatorials of references. (default: False)'
  type: boolean
  inputBinding:
    prefix: -venn
- id: show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: s_test
  doc: 'Define the repetition time of random subregion test between reference and
    query. (default: 0)'
  type: string
  inputBinding:
    prefix: -stest
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
- combinatorial
