#!/usr/bin/env cwl-runner

baseCommand:
- anvi-push
class: CommandLineTool
cwlVersion: v1.0
id: anvi-push
inputs:
- doc: The user for an anvi'server.
  id: user
  inputBinding:
    prefix: --user
  type: string
- doc: Anvi'server url
  id: api_url
  inputBinding:
    prefix: --api-url
  type: string
- doc: Name of the project. Please choose a short but descriptive name (so anvi'o
    can use it whenever she needs to name an output file, or add a new table in a
    database, or name her first born).
  id: project_name
  inputBinding:
    prefix: --project-name
  type: string
- doc: NEWICK formatted tree structure
  id: tree
  inputBinding:
    prefix: --tree
  type: string
- doc: "A flat file that contains the order of items you wish the display using the\
    \ interactive interface. You may want to use this if you have a specific order\
    \ of items in your mind, and do not want to display a tree in the middle (or simply\
    \ you don't have one). The file format is simple: each line should have an item\
    \ name, and there should be no header."
  id: items_order
  inputBinding:
    prefix: --items-order
  type: string
- doc: A FASTA-formatted input file
  id: fast_a_file
  inputBinding:
    prefix: --fasta-file
  type: string
- doc: A TAB-delimited file for view data
  id: view_data
  inputBinding:
    prefix: --view-data
  type: string
- doc: A TAB-delimited file for additional layers for splits. The first column of
    this file must be split names, and the remaining columns should be unique attributes.
    The file does not need to contain all split names, or values for each split in
    every column. Anvi'o will try to deal with missing data nicely. Each column in
    this file will be visualized as a new layer in the tree.
  id: additional_layers
  inputBinding:
    prefix: --additional-layers
  type: string
- doc: State file, you can export states from database using anvi-export-state program
  id: state
  inputBinding:
    prefix: --state
  type: string
- doc: A plain text file that contains some description about the project. You can
    use Markdwon syntax. The description text will be rendered and shown in all relevant
    interfaces, including the anvi'o interactive interface, or anvi'o summary outputs.
  id: description
  inputBinding:
    prefix: --description
  type: string
- doc: Tab-delimited file, first column contains tree leaves (gene clusters, splits,
    contigs etc.) and second column contains which Bin they belong.
  id: bins
  inputBinding:
    prefix: --bins
  type: string
- doc: Additional information for bins. The file must contain three TAB-delimited
    columns, where the first one must be a unique bin name, the second should be a
    'source', and the last one should be a 7 character HTML color code (i.e., '#424242').
    Source column must contain information about the origin of the bin. If these bins
    are automatically identified by a program like CONCOCT, this column could contain
    the program name and version. The source information will be associated with the
    bin in various interfaces so in a sense it is not *that* critical what it says
    there, but on the other hand it is, becuse we should also think about people who
    may end up having to work with what we put together later.
  id: bins_info
  inputBinding:
    prefix: --bins-info
  type: string
- doc: Be bold (at your own risk), and delete if exists.
  id: delete_if_exists
  inputBinding:
    prefix: --delete-if-exists
  type: boolean
