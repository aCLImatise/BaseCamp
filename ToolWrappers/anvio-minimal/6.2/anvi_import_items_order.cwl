class: CommandLineTool
id: anvi_import_items_order.cwl
inputs:
- id: in_input_order
  doc: "One of the two important things you must provide: the\nfile that contains\
    \ the items order. The format of this\nfile is important. It can either contain\
    \ a proper\nnewick tree in it, or a complete list of 'items' in\nthe target database\
    \ where every line of the file is\nsimply an item name. If you are providing a\
    \ newick\ntree, the entire file should be a single line. I know\nit sounds hard,\
    \ but you seriously can do this."
  type: File?
  inputBinding:
    prefix: --input-order
- id: in_path__dbpath
  doc: "PATH, --db-path DB PATH\nAn appropriate anvi'o database to import the items\n\
    order. Currently it can be a profile, pan, or genes\ndatabase. But you should\
    \ try your chances with other\nkinds of databases for fun and games. Basically,\
    \ if\nthe database contains an items order table, then\nthings will work. Otherwise,\
    \ you will probably get\nangry errors back in the worst case scenario."
  type: File?
  inputBinding:
    prefix: -p
- id: in_name_what_we
  doc: "NAME     What should we call this order? Give it a concise,\nsingle-word name."
  type: string?
  inputBinding:
    prefix: --name
- id: in_make_default
  doc: "You have the option to make this order the default\norder in the database.\
    \ Which means, anvi'o will use\nthis one when someone runs the program anvi-\n\
    interactive and presses draw. Big responsibility. But\nif you have a 'default'\
    \ state, it will not work\nbecause the default items order in the state file\n\
    overwrites the one that comes from the database. So\nnot that big of a responsibility.\n"
  type: boolean?
  inputBinding:
    prefix: --make-default
- id: in_path
  doc: ''
  type: File?
  inputBinding:
    position: 0
- id: in_var_5
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-import-items-order
