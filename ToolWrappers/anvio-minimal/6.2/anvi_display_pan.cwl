class: CommandLineTool
id: anvi_display_pan.cwl
inputs:
- id: in_pan_db
  doc: Anvi'o pan database
  type: string?
  inputBinding:
    prefix: --pan-db
- id: in_genomes_storage
  doc: Anvi'o genomes storage file
  type: File?
  inputBinding:
    prefix: --genomes-storage
- id: in_view_data
  doc: A TAB-delimited file for view data
  type: File?
  inputBinding:
    prefix: --view-data
- id: in_tree
  doc: NEWICK formatted tree structure
  type: string?
  inputBinding:
    prefix: --tree
- id: in_additional_view
  doc: "A TAB-delimited file for an additional view to be used\nin the interface.\
    \ This file should contain all split\nnames, and values for each of them in all\
    \ samples.\nEach column in this file must correspond to a sample\nname. Content\
    \ of this file will be called 'user_view',\nwhich will be available as a new item\
    \ in the 'views'\ncombo box in the interface"
  type: File?
  inputBinding:
    prefix: --additional-view
- id: in_additional_layers
  doc: "A TAB-delimited file for additional layers for splits.\nThe first column of\
    \ this file must be split names, and\nthe remaining columns should be unique attributes.\
    \ The\nfile does not need to contain all split names, or\nvalues for each split\
    \ in every column. Anvi'o will try\nto deal with missing data nicely. Each column\
    \ in this\nfile will be visualized as a new layer in the tree."
  type: File?
  inputBinding:
    prefix: --additional-layers
- id: in_title
  doc: "Title for the interface. If you are working with a\nRUNINFO dict, the title\
    \ will be determined based on\ninformation stored in that file. Regardless, you\
    \ can\noverride that value using this parameter."
  type: File?
  inputBinding:
    prefix: --title
- id: in_state_autoload
  doc: "Automatically load previous saved state and draw tree.\nTo see a list of available\
    \ states, use --show-states\nflag."
  type: string?
  inputBinding:
    prefix: --state-autoload
- id: in_collection_autoload
  doc: "Automatically load a collection and draw tree. To see\na list of available\
    \ collections, use --list-\ncollections flag."
  type: string?
  inputBinding:
    prefix: --collection-autoload
- id: in_export_svg
  doc: The SVG output file path.
  type: File?
  inputBinding:
    prefix: --export-svg
- id: in_skip_in_it_functions
  doc: "When declared, function calls for genes will not be\ninitialized (therefore\
    \ will be missing from all\nrelevant interfaces or output files). The use of this\n\
    flag may reduce the memory fingerprint and processing\ntime for large datasets."
  type: boolean?
  inputBinding:
    prefix: --skip-init-functions
- id: in_dry_run
  doc: "Don't do anything real. Test everything, and stop\nright before wherever the\
    \ developer said 'well, this\nis enough testing', and decided to print out results."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_skip_auto_ordering
  doc: "When declared, the attempt to include automatically\ngenerated orders of items\
    \ based on additional data is\nskipped. In case those buggers cause issues with\
    \ your\ndata, and you still want to see your stuff and deal\nwith the other issue\
    \ maybe later."
  type: boolean?
  inputBinding:
    prefix: --skip-auto-ordering
- id: in_ip_address
  doc: "IP address for the HTTP server. The default ip address\n(0.0.0.0) should work\
    \ just fine for most."
  type: double?
  inputBinding:
    prefix: --ip-address
- id: in_port_number
  doc: "Port number to use for anvi'o services. If nothing is\ndeclared, anvi'o will\
    \ try to find a suitable port\nnumber, starting from the default port number,\
    \ 8080."
  type: long?
  inputBinding:
    prefix: --port-number
- id: in_browser_path
  doc: "By default, anvi'o will use your default browser to\nlaunch the interactive\
    \ interface. If you would like to\nuse something else than your system default,\
    \ you can\nprovide a full path for an alternative browser using\nthis parameter,\
    \ and hope for the best. For instance we\nare using this parameter to call Google's\
    \ experimental\nbrowser, Canary, which performs better with demanding\nvisualizations."
  type: File?
  inputBinding:
    prefix: --browser-path
- id: in_read_only
  doc: "When the interactive interface is started with this\nflag, all 'database write'\
    \ operations will be\ndisabled."
  type: boolean?
  inputBinding:
    prefix: --read-only
- id: in_server_only
  doc: "The default behavior is to start the local server, and\nfire up a browser\
    \ that connects to the server. If you\nhave other plans, and want to start the\
    \ server without\ncalling the browser, this is the flag you need."
  type: boolean?
  inputBinding:
    prefix: --server-only
- id: in_password_protected
  doc: "If this flag is set, command line tool will ask you to\nenter a password and\
    \ interactive interface will be\nonly accessible after entering same password.\
    \ This\noption is recommended for shared machines like\nclusters or shared networks\
    \ where computers are not\nisolated."
  type: boolean?
  inputBinding:
    prefix: --password-protected
- id: in_user_server_shutdown
  doc: "Allow users to shutdown an anvi'server via web\ninterface.\n"
  type: boolean?
  inputBinding:
    prefix: --user-server-shutdown
- id: in_interface_dot
  doc: "--view NAME           Start the interface with a pre-selected view. To see\
    \ a\nlist of available views, use --show-views flag."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_export_svg
  doc: The SVG output file path.
  type: File?
  outputBinding:
    glob: $(inputs.in_export_svg)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-display-pan
