class: CommandLineTool
id: anvi_push.cwl
inputs:
- id: in_user
  doc: The user for an anvi'server.
  type: string
  inputBinding:
    prefix: --user
- id: in_api_url
  doc: Anvi'server url
  type: string
  inputBinding:
    prefix: --api-url
- id: in_project_name
  doc: "Name of the project. Please choose a short but\ndescriptive name (so anvi'o\
    \ can use it whenever she\nneeds to name an output file, or add a new table in\
    \ a\ndatabase, or name her first born)."
  type: File
  inputBinding:
    prefix: --project-name
- id: in_tree
  doc: NEWICK formatted tree structure
  type: string
  inputBinding:
    prefix: --tree
- id: in_items_order
  doc: "A flat file that contains the order of items you wish\nthe display using the\
    \ interactive interface. You may\nwant to use this if you have a specific order\
    \ of items\nin your mind, and do not want to display a tree in the\nmiddle (or\
    \ simply you don't have one). The file format\nis simple: each line should have\
    \ an item name, and\nthere should be no header."
  type: File
  inputBinding:
    prefix: --items-order
- id: in_fast_a_file
  doc: A FASTA-formatted input file
  type: File
  inputBinding:
    prefix: --fasta-file
- id: in_view_data
  doc: A TAB-delimited file for view data
  type: File
  inputBinding:
    prefix: --view-data
- id: in_additional_layers
  doc: "A TAB-delimited file for additional layers for splits.\nThe first column of\
    \ this file must be split names, and\nthe remaining columns should be unique attributes.\
    \ The\nfile does not need to contain all split names, or\nvalues for each split\
    \ in every column. Anvi'o will try\nto deal with missing data nicely. Each column\
    \ in this\nfile will be visualized as a new layer in the tree."
  type: File
  inputBinding:
    prefix: --additional-layers
- id: in_state
  doc: "State file, you can export states from database using\nanvi-export-state program"
  type: File
  inputBinding:
    prefix: --state
- id: in_description
  doc: "A plain text file that contains some description about\nthe project. You can\
    \ use Markdwon syntax. The\ndescription text will be rendered and shown in all\n\
    relevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary\
    \ outputs."
  type: File
  inputBinding:
    prefix: --description
- id: in_bins
  doc: "Tab-delimited file, first column contains tree leaves\n(gene clusters, splits,\
    \ contigs etc.) and second\ncolumn contains which Bin they belong."
  type: File
  inputBinding:
    prefix: --bins
- id: in_bins_info
  doc: "Additional information for bins. The file must contain\nthree TAB-delimited\
    \ columns, where the first one must\nbe a unique bin name, the second should be\
    \ a 'source',\nand the last one should be a 7 character HTML color\ncode (i.e.,\
    \ '#424242'). Source column must contain\ninformation about the origin of the\
    \ bin. If these bins\nare automatically identified by a program like\nCONCOCT,\
    \ this column could contain the program name\nand version. The source information\
    \ will be associated\nwith the bin in various interfaces so in a sense it is\n\
    not *that* critical what it says there, but on the\nother hand it is, becuse we\
    \ should also think about\npeople who may end up having to work with what we put\n\
    together later."
  type: File
  inputBinding:
    prefix: --bins-info
- id: in_delete_if_exists
  doc: Be bold (at your own risk), and delete if exists.
  type: boolean
  inputBinding:
    prefix: --delete-if-exists
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_project_name
  doc: "Name of the project. Please choose a short but\ndescriptive name (so anvi'o\
    \ can use it whenever she\nneeds to name an output file, or add a new table in\
    \ a\ndatabase, or name her first born)."
  type: File
  outputBinding:
    glob: $(inputs.in_project_name)
cwlVersion: v1.1
baseCommand:
- anvi-push
