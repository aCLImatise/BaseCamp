class: CommandLineTool
id: anvi_push.cwl
inputs:
- id: user
  doc: The user for an anvi'server.
  type: string
  inputBinding:
    prefix: --user
- id: api_url
  doc: Anvi'server url
  type: string
  inputBinding:
    prefix: --api-url
- id: project_name
  doc: Name of the project. Please choose a short but descriptive name (so anvi'o
    can use it whenever she needs to name an output file, or add a new table in a
    database, or name her first born).
  type: string
  inputBinding:
    prefix: --project-name
- id: tree
  doc: NEWICK formatted tree structure
  type: string
  inputBinding:
    prefix: --tree
- id: items_order
  doc: "A flat file that contains the order of items you wish the display using the\
    \ interactive interface. You may want to use this if you have a specific order\
    \ of items in your mind, and do not want to display a tree in the middle (or simply\
    \ you don't have one). The file format is simple: each line should have an item\
    \ name, and there should be no header."
  type: string
  inputBinding:
    prefix: --items-order
- id: fast_a_file
  doc: A FASTA-formatted input file
  type: string
  inputBinding:
    prefix: --fasta-file
- id: view_data
  doc: A TAB-delimited file for view data
  type: string
  inputBinding:
    prefix: --view-data
- id: additional_layers
  doc: A TAB-delimited file for additional layers for splits. The first column of
    this file must be split names, and the remaining columns should be unique attributes.
    The file does not need to contain all split names, or values for each split in
    every column. Anvi'o will try to deal with missing data nicely. Each column in
    this file will be visualized as a new layer in the tree.
  type: string
  inputBinding:
    prefix: --additional-layers
- id: state
  doc: State file, you can export states from database using anvi-export-state program
  type: string
  inputBinding:
    prefix: --state
- id: description
  doc: A plain text file that contains some description about the project. You can
    use Markdwon syntax. The description text will be rendered and shown in all relevant
    interfaces, including the anvi'o interactive interface, or anvi'o summary outputs.
  type: string
  inputBinding:
    prefix: --description
- id: bins
  doc: Tab-delimited file, first column contains tree leaves (gene clusters, splits,
    contigs etc.) and second column contains which Bin they belong.
  type: string
  inputBinding:
    prefix: --bins
- id: bins_info
  doc: Additional information for bins. The file must contain three TAB-delimited
    columns, where the first one must be a unique bin name, the second should be a
    'source', and the last one should be a 7 character HTML color code (i.e., '#424242').
    Source column must contain information about the origin of the bin. If these bins
    are automatically identified by a program like CONCOCT, this column could contain
    the program name and version. The source information will be associated with the
    bin in various interfaces so in a sense it is not *that* critical what it says
    there, but on the other hand it is, becuse we should also think about people who
    may end up having to work with what we put together later.
  type: string
  inputBinding:
    prefix: --bins-info
- id: delete_if_exists
  doc: Be bold (at your own risk), and delete if exists.
  type: boolean
  inputBinding:
    prefix: --delete-if-exists
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-push
