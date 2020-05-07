class: CommandLineTool
id: anvi_import_items_order.cwl
inputs:
- id: input_order
  doc: "One of the two important things you must provide: the file that contains the\
    \ items order. The format of this file is important. It can either contain a proper\
    \ newick tree in it, or a complete list of 'items' in the target database where\
    \ every line of the file is simply an item name. If you are providing a newick\
    \ tree, the entire file should be a single line. I know it sounds hard, but you\
    \ seriously can do this."
  type: File
  inputBinding:
    prefix: --input-order
- id: p
  doc: PATH, --db-path DB PATH An appropriate anvi'o database to import the items
    order. Currently it can be a profile, pan, or genes database. But you should try
    your chances with other kinds of databases for fun and games. Basically, if the
    database contains an items order table, then things will work. Otherwise, you
    will probably get angry errors back in the worst case scenario.
  type: string
  inputBinding:
    prefix: -p
- id: name
  doc: NAME     What should we call this order? Give it a concise, single-word name.
  type: string
  inputBinding:
    prefix: --name
- id: make_default
  doc: You have the option to make this order the default order in the database. Which
    means, anvi'o will use this one when someone runs the program anvi- interactive
    and presses draw. Big responsibility. But if you have a 'default' state, it will
    not work because the default items order in the state file overwrites the one
    that comes from the database. So not that big of a responsibility.
  type: boolean
  inputBinding:
    prefix: --make-default
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-import-items-order
