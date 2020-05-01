#!/usr/bin/env cwl-runner

baseCommand:
- anvi-display-pan
class: CommandLineTool
cwlVersion: v1.0
id: anvi-display-pan
inputs:
- doc: Anvi'o pan database
  id: pan_db
  inputBinding:
    prefix: --pan-db
  type: string
- doc: Anvi'o genomes storage file
  id: genomes_storage
  inputBinding:
    prefix: --genomes-storage
  type: string
- doc: A TAB-delimited file for view data
  id: view_data
  inputBinding:
    prefix: --view-data
  type: string
- doc: NEWICK formatted tree structure
  id: tree
  inputBinding:
    prefix: --tree
  type: string
- doc: A TAB-delimited file for an additional view to be used in the interface. This
    file should contain all split names, and values for each of them in all samples.
    Each column in this file must correspond to a sample name. Content of this file
    will be called 'user_view', which will be available as a new item in the 'views'
    combo box in the interface
  id: additional_view
  inputBinding:
    prefix: --additional-view
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
- doc: Start the interface with a pre-selected view. To see a list of available views,
    use --show-views flag.
  id: view
  inputBinding:
    prefix: --view
  type: string
- doc: Title for the interface. If you are working with a RUNINFO dict, the title
    will be determined based on information stored in that file. Regardless, you can
    override that value using this parameter.
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: Automatically load previous saved state and draw tree. To see a list of available
    states, use --show-states flag.
  id: state_autoload
  inputBinding:
    prefix: --state-autoload
  type: string
- doc: Automatically load a collection and draw tree. To see a list of available collections,
    use --list- collections flag.
  id: collection_autoload
  inputBinding:
    prefix: --collection-autoload
  type: string
- doc: The SVG output file path.
  id: export_svg
  inputBinding:
    prefix: --export-svg
  type: File
- doc: When declared, function calls for genes will not be initialized (therefore
    will be missing from all relevant interfaces or output files). The use of this
    flag may reduce the memory fingerprint and processing time for large datasets.
  id: skip_in_it_functions
  inputBinding:
    prefix: --skip-init-functions
  type: boolean
- doc: Don't do anything real. Test everything, and stop right before wherever the
    developer said 'well, this is enough testing', and decided to print out results.
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: boolean
- doc: When declared, the attempt to include automatically generated orders of items
    based on additional data is skipped. In case those buggers cause issues with your
    data, and you still want to see your stuff and deal with the other issue maybe
    later.
  id: skip_auto_ordering
  inputBinding:
    prefix: --skip-auto-ordering
  type: boolean
- doc: IP address for the HTTP server. The default ip address (0.0.0.0) should work
    just fine for most.
  id: ip_address
  inputBinding:
    prefix: --ip-address
  type: string
- doc: Port number to use for anvi'o services. If nothing is declared, anvi'o will
    try to find a suitable port number, starting from the default port number, 8080.
  id: port_number
  inputBinding:
    prefix: --port-number
  type: long
- doc: By default, anvi'o will use your default browser to launch the interactive
    interface. If you would like to use something else than your system default, you
    can provide a full path for an alternative browser using this parameter, and hope
    for the best. For instance we are using this parameter to call Google's experimental
    browser, Canary, which performs better with demanding visualizations.
  id: browser_path
  inputBinding:
    prefix: --browser-path
  type: File
- doc: When the interactive interface is started with this flag, all 'database write'
    operations will be disabled.
  id: read_only
  inputBinding:
    prefix: --read-only
  type: boolean
- doc: The default behavior is to start the local server, and fire up a browser that
    connects to the server. If you have other plans, and want to start the server
    without calling the browser, this is the flag you need.
  id: server_only
  inputBinding:
    prefix: --server-only
  type: boolean
- doc: If this flag is set, command line tool will ask you to enter a password and
    interactive interface will be only accessible after entering same password. This
    option is recommended for shared machines like clusters or shared networks where
    computers are not isolated.
  id: password_protected
  inputBinding:
    prefix: --password-protected
  type: boolean
- doc: Allow users to shutdown an anvi'server via web interface.
  id: user_server_shutdown
  inputBinding:
    prefix: --user-server-shutdown
  type: boolean
