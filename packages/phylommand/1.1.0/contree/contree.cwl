class: CommandLineTool
id: contree.cwl
inputs:
- id: in_add_to_support
  doc: "/ -a           add one to the value of the internal node for\neach tree that\
    \ that split is present in."
  type: boolean
  inputBinding:
    prefix: --add_to_support
- id: in_calculate_support
  doc: "/ -s        same as --add_to_support but divide the number\nby number of trees\
    \ compared against."
  type: boolean
  inputBinding:
    prefix: --calculate_support
- id: in_compare
  doc: "/ -c [value]          output conflicting splits where at least one\nbranch\
    \ support the conflict with more than given\nsupport, e.g. -c 0.7."
  type: boolean
  inputBinding:
    prefix: --compare
- id: in_database
  doc: "/ -d [file]          give a second file of trees to compare against\ninstead\
    \ of comparing within the ordinary input.\nIf - is given input will be taken from\
    \ standard\nin instead of file, e.g. -d -. In that case the\ninput compared to\
    \ must  be given in a file (by\n-f or as last argument)."
  type: boolean
  inputBinding:
    prefix: --database
- id: in_decisiveness
  doc: "/ -D [genes]     calculates proportion of random trees for which\ngiven gene\
    \ sampling is decisive and the mean\nproportion of branches that are distinguished.\n\
    (Sanderson et al. 2010, BMC Evol. Biol. 19:\n155). The genes for each taxon are\
    \ given as a\ncomma (,) separated string, the genes for\ndifferent taxon are separated\
    \ by a bar (|). E.g\n-D 'ITS,RPB2|ITS|ITS,RPB2|RPB2|RPB2|ITS', or in\na file (given\
    \ by -f or as last argument) with a\ncomma separated string with the genes for\
    \ each\ntaxa on a separate row. No taxon names, trees,\nor sequences are needed."
  type: boolean
  inputBinding:
    prefix: --decisiveness
- id: in_iterations
  doc: "/ -i [number]      give numbers of iterations to do when\ncalculating decisiveness,\
    \ e.g. -i 1000."
  type: boolean
  inputBinding:
    prefix: --iterations
- id: in_file
  doc: "/ -f [file]              give file name for trees, or decisiveness, e.g.\n\
    -f file.tree."
  type: boolean
  inputBinding:
    prefix: --file
- id: in_format
  doc: "[newick/nexus]         give format of input, e.g. --format nexus. If no\n\
    format is given and the input is a file contree\nwill try to guess the format,\
    \ if it is through\nstandard in it will assume newick format. A\nseparate file\
    \ format can be given for the\ndatabase file after a ',', e.g. --format\nnewick,nexus.\
    \ If only one format is given, it\nwill be used for both tree files/inputs."
  type: boolean
  inputBinding:
    prefix: --format
- id: in_html
  doc: "give output as tree in html (svg) format with\nconflicting tips coloured green\
    \ and red when\ndoing --compare."
  type: boolean
  inputBinding:
    prefix: --html
- id: in_non_shared_tips
  doc: / -t          print tip names not present in the other tree.
  type: boolean
  inputBinding:
    prefix: --non_shared_tips
- id: in_output
  doc: "[newick/nexus]         give tree format for output, nexus (nex or x for\n\
    short) or newick (new or w for short), e.g\n--output x. (default w)."
  type: boolean
  inputBinding:
    prefix: --output
- id: in_robinson_foulds
  doc: / -r          compute Robinson-Foulds metric between trees.
  type: boolean
  inputBinding:
    prefix: --robinson_foulds
- id: in_rooted
  doc: "/ -R                   treat trees as rooted for --add_to_support and\n--calculate_support."
  type: boolean
  inputBinding:
    prefix: --rooted
- id: in_verbose
  doc: / -v                  get additional output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_dot_trees
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- contree
