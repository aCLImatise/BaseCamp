version 1.0

task AnviDisplayPan {
  input {
    String? pan_db
    String? genomes_storage
    String? view_data
    String? tree
    String? additional_view
    String? additional_layers
    String? view
    String? title
    String? state_autoload
    String? collection_autoload
    File? export_svg
    Boolean? skip_in_it_functions
    Boolean? dry_run
    Boolean? skip_auto_ordering
    String? ip_address
    Int? port_number
    File? browser_path
    Boolean? read_only
    Boolean? server_only
    Boolean? password_protected
    Boolean? user_server_shutdown
  }
  command <<<
    anvi-display-pan \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(view_data) then ("--view-data " +  '"' + view_data + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(additional_view) then ("--additional-view " +  '"' + additional_view + '"') else ""} \
      ~{if defined(additional_layers) then ("--additional-layers " +  '"' + additional_layers + '"') else ""} \
      ~{if defined(view) then ("--view " +  '"' + view + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(state_autoload) then ("--state-autoload " +  '"' + state_autoload + '"') else ""} \
      ~{if defined(collection_autoload) then ("--collection-autoload " +  '"' + collection_autoload + '"') else ""} \
      ~{if defined(export_svg) then ("--export-svg " +  '"' + export_svg + '"') else ""} \
      ~{true="--skip-init-functions" false="" skip_in_it_functions} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--skip-auto-ordering" false="" skip_auto_ordering} \
      ~{if defined(ip_address) then ("--ip-address " +  '"' + ip_address + '"') else ""} \
      ~{if defined(port_number) then ("--port-number " +  '"' + port_number + '"') else ""} \
      ~{if defined(browser_path) then ("--browser-path " +  '"' + browser_path + '"') else ""} \
      ~{true="--read-only" false="" read_only} \
      ~{true="--server-only" false="" server_only} \
      ~{true="--password-protected" false="" password_protected} \
      ~{true="--user-server-shutdown" false="" user_server_shutdown}
  >>>
  parameter_meta {
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    view_data: "A TAB-delimited file for view data"
    tree: "NEWICK formatted tree structure"
    additional_view: "A TAB-delimited file for an additional view to be used in the interface. This file should contain all split names, and values for each of them in all samples. Each column in this file must correspond to a sample name. Content of this file will be called 'user_view', which will be available as a new item in the 'views' combo box in the interface"
    additional_layers: "A TAB-delimited file for additional layers for splits. The first column of this file must be split names, and the remaining columns should be unique attributes. The file does not need to contain all split names, or values for each split in every column. Anvi'o will try to deal with missing data nicely. Each column in this file will be visualized as a new layer in the tree."
    view: "Start the interface with a pre-selected view. To see a list of available views, use --show-views flag."
    title: "Title for the interface. If you are working with a RUNINFO dict, the title will be determined based on information stored in that file. Regardless, you can override that value using this parameter."
    state_autoload: "Automatically load previous saved state and draw tree. To see a list of available states, use --show-states flag."
    collection_autoload: "Automatically load a collection and draw tree. To see a list of available collections, use --list- collections flag."
    export_svg: "The SVG output file path."
    skip_in_it_functions: "When declared, function calls for genes will not be initialized (therefore will be missing from all relevant interfaces or output files). The use of this flag may reduce the memory fingerprint and processing time for large datasets."
    dry_run: "Don't do anything real. Test everything, and stop right before wherever the developer said 'well, this is enough testing', and decided to print out results."
    skip_auto_ordering: "When declared, the attempt to include automatically generated orders of items based on additional data is skipped. In case those buggers cause issues with your data, and you still want to see your stuff and deal with the other issue maybe later."
    ip_address: "IP address for the HTTP server. The default ip address (0.0.0.0) should work just fine for most."
    port_number: "Port number to use for anvi'o services. If nothing is declared, anvi'o will try to find a suitable port number, starting from the default port number, 8080."
    browser_path: "By default, anvi'o will use your default browser to launch the interactive interface. If you would like to use something else than your system default, you can provide a full path for an alternative browser using this parameter, and hope for the best. For instance we are using this parameter to call Google's experimental browser, Canary, which performs better with demanding visualizations."
    read_only: "When the interactive interface is started with this flag, all 'database write' operations will be disabled."
    server_only: "The default behavior is to start the local server, and fire up a browser that connects to the server. If you have other plans, and want to start the server without calling the browser, this is the flag you need."
    password_protected: "If this flag is set, command line tool will ask you to enter a password and interactive interface will be only accessible after entering same password. This option is recommended for shared machines like clusters or shared networks where computers are not isolated."
    user_server_shutdown: "Allow users to shutdown an anvi'server via web interface."
  }
}