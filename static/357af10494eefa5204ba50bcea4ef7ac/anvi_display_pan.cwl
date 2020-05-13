class: CommandLineTool
id: anvi_display_pan.cwl
inputs:
- id: pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: view_data
  doc: A TAB-delimited file for view data
  type: string
  inputBinding:
    prefix: --view-data
- id: tree
  doc: NEWICK formatted tree structure
  type: string
  inputBinding:
    prefix: --tree
- id: additional_view
  doc: A TAB-delimited file for an additional view to be used in the interface. This
    file should contain all split names, and values for each of them in all samples.
    Each column in this file must correspond to a sample name. Content of this file
    will be called 'user_view', which will be available as a new item in the 'views'
    combo box in the interface
  type: string
  inputBinding:
    prefix: --additional-view
- id: additional_layers
  doc: A TAB-delimited file for additional layers for splits. The first column of
    this file must be split names, and the remaining columns should be unique attributes.
    The file does not need to contain all split names, or values for each split in
    every column. Anvi'o will try to deal with missing data nicely. Each column in
    this file will be visualized as a new layer in the tree.
  type: string
  inputBinding:
    prefix: --additional-layers
- id: view
  doc: Start the interface with a pre-selected view. To see a list of available views,
    use --show-views flag.
  type: string
  inputBinding:
    prefix: --view
- id: title
  doc: Title for the interface. If you are working with a RUNINFO dict, the title
    will be determined based on information stored in that file. Regardless, you can
    override that value using this parameter.
  type: string
  inputBinding:
    prefix: --title
- id: state_autoload
  doc: Automatically load previous saved state and draw tree. To see a list of available
    states, use --show-states flag.
  type: string
  inputBinding:
    prefix: --state-autoload
- id: collection_autoload
  doc: Automatically load a collection and draw tree. To see a list of available collections,
    use --list- collections flag.
  type: string
  inputBinding:
    prefix: --collection-autoload
- id: export_svg
  doc: The SVG output file path.
  type: File
  inputBinding:
    prefix: --export-svg
- id: skip_in_it_functions
  doc: When declared, function calls for genes will not be initialized (therefore
    will be missing from all relevant interfaces or output files). The use of this
    flag may reduce the memory fingerprint and processing time for large datasets.
  type: boolean
  inputBinding:
    prefix: --skip-init-functions
- id: dry_run
  doc: Don't do anything real. Test everything, and stop right before wherever the
    developer said 'well, this is enough testing', and decided to print out results.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: skip_auto_ordering
  doc: When declared, the attempt to include automatically generated orders of items
    based on additional data is skipped. In case those buggers cause issues with your
    data, and you still want to see your stuff and deal with the other issue maybe
    later.
  type: boolean
  inputBinding:
    prefix: --skip-auto-ordering
- id: ip_address
  doc: IP address for the HTTP server. The default ip address (0.0.0.0) should work
    just fine for most.
  type: string
  inputBinding:
    prefix: --ip-address
- id: port_number
  doc: Port number to use for anvi'o services. If nothing is declared, anvi'o will
    try to find a suitable port number, starting from the default port number, 8080.
  type: long
  inputBinding:
    prefix: --port-number
- id: browser_path
  doc: By default, anvi'o will use your default browser to launch the interactive
    interface. If you would like to use something else than your system default, you
    can provide a full path for an alternative browser using this parameter, and hope
    for the best. For instance we are using this parameter to call Google's experimental
    browser, Canary, which performs better with demanding visualizations.
  type: File
  inputBinding:
    prefix: --browser-path
- id: read_only
  doc: When the interactive interface is started with this flag, all 'database write'
    operations will be disabled.
  type: boolean
  inputBinding:
    prefix: --read-only
- id: server_only
  doc: The default behavior is to start the local server, and fire up a browser that
    connects to the server. If you have other plans, and want to start the server
    without calling the browser, this is the flag you need.
  type: boolean
  inputBinding:
    prefix: --server-only
- id: password_protected
  doc: If this flag is set, command line tool will ask you to enter a password and
    interactive interface will be only accessible after entering same password. This
    option is recommended for shared machines like clusters or shared networks where
    computers are not isolated.
  type: boolean
  inputBinding:
    prefix: --password-protected
- id: user_server_shutdown
  doc: Allow users to shutdown an anvi'server via web interface.
  type: boolean
  inputBinding:
    prefix: --user-server-shutdown
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-display-pan
