version 1.0

task Anvidisplaypan {
  input {
    String? pan_db
    File? genomes_storage
    File? view_data
    String? tree
    File? additional_view
    File? additional_layers
    File? title
    String? state_autoload
    String? collection_autoload
    File? export_svg
    Boolean? skip_in_it_functions
    Boolean? dry_run
    Boolean? skip_auto_ordering
    Boolean? skip_news
    Float? ip_address
    Int? port_number
    File? browser_path
    Boolean? read_only
    Boolean? server_only
    Boolean? password_protected
    Boolean? user_server_shutdown
    String interface_dot
  }
  command <<<
    anvi_display_pan \
      ~{interface_dot} \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(view_data) then ("--view-data " +  '"' + view_data + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(additional_view) then ("--additional-view " +  '"' + additional_view + '"') else ""} \
      ~{if defined(additional_layers) then ("--additional-layers " +  '"' + additional_layers + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(state_autoload) then ("--state-autoload " +  '"' + state_autoload + '"') else ""} \
      ~{if defined(collection_autoload) then ("--collection-autoload " +  '"' + collection_autoload + '"') else ""} \
      ~{if defined(export_svg) then ("--export-svg " +  '"' + export_svg + '"') else ""} \
      ~{if (skip_in_it_functions) then "--skip-init-functions" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (skip_auto_ordering) then "--skip-auto-ordering" else ""} \
      ~{if (skip_news) then "--skip-news" else ""} \
      ~{if defined(ip_address) then ("--ip-address " +  '"' + ip_address + '"') else ""} \
      ~{if defined(port_number) then ("--port-number " +  '"' + port_number + '"') else ""} \
      ~{if defined(browser_path) then ("--browser-path " +  '"' + browser_path + '"') else ""} \
      ~{if (read_only) then "--read-only" else ""} \
      ~{if (server_only) then "--server-only" else ""} \
      ~{if (password_protected) then "--password-protected" else ""} \
      ~{if (user_server_shutdown) then "--user-server-shutdown" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pan_db: "Anvi'o pan database (default: None)"
    genomes_storage: "Anvi'o genomes storage file (default: None)"
    view_data: "A TAB-delimited file for view data (default: None)"
    tree: "NEWICK formatted tree structure (default: None)"
    additional_view: "A TAB-delimited file for an additional view to be used\\nin the interface. This file should contain all split\\nnames, and values for each of them in all samples.\\nEach column in this file must correspond to a sample\\nname. Content of this file will be called 'user_view',\\nwhich will be available as a new item in the 'views'\\ncombo box in the interface (default: None)"
    additional_layers: "A TAB-delimited file for additional layers for splits.\\nThe first column of this file must be split names, and\\nthe remaining columns should be unique attributes. The\\nfile does not need to contain all split names, or\\nvalues for each split in every column. Anvi'o will try\\nto deal with missing data nicely. Each column in this\\nfile will be visualized as a new layer in the tree.\\n(default: None)"
    title: "Title for the interface. If you are working with a\\nRUNINFO dict, the title will be determined based on\\ninformation stored in that file. Regardless, you can\\noverride that value using this parameter. (default:\\nNone)"
    state_autoload: "Automatically load previous saved state and draw tree.\\nTo see a list of available states, use --show-states\\nflag. (default: None)"
    collection_autoload: "Automatically load a collection and draw tree. To see\\na list of available collections, use --list-\\ncollections flag. (default: None)"
    export_svg: "The SVG output file path. (default: None)"
    skip_in_it_functions: "When declared, function calls for genes will not be\\ninitialized (therefore will be missing from all\\nrelevant interfaces or output files). The use of this\\nflag may reduce the memory fingerprint and processing\\ntime for large datasets. (default: False)"
    dry_run: "Don't do anything real. Test everything, and stop\\nright before wherever the developer said 'well, this\\nis enough testing', and decided to print out results.\\n(default: False)"
    skip_auto_ordering: "When declared, the attempt to include automatically\\ngenerated orders of items based on additional data is\\nskipped. In case those buggers cause issues with your\\ndata, and you still want to see your stuff and deal\\nwith the other issue maybe later. (default: False)"
    skip_news: "Don't try to read news content from upstream.\\n(default: False)"
    ip_address: "IP address for the HTTP server. The default ip address\\n(0.0.0.0) should work just fine for most."
    port_number: "Port number to use for anvi'o services. If nothing is\\ndeclared, anvi'o will try to find a suitable port\\nnumber, starting from the default port number, 8080.\\n(default: None)"
    browser_path: "By default, anvi'o will use your default browser to\\nlaunch the interactive interface. If you would like to\\nuse something else than your system default, you can\\nprovide a full path for an alternative browser using\\nthis parameter, and hope for the best. For instance we\\nare using this parameter to call Google's experimental\\nbrowser, Canary, which performs better with demanding\\nvisualizations. (default: None)"
    read_only: "When the interactive interface is started with this\\nflag, all 'database write' operations will be\\ndisabled. (default: False)"
    server_only: "The default behavior is to start the local server, and\\nfire up a browser that connects to the server. If you\\nhave other plans, and want to start the server without\\ncalling the browser, this is the flag you need.\\n(default: False)"
    password_protected: "If this flag is set, command line tool will ask you to\\nenter a password and interactive interface will be\\nonly accessible after entering same password. This\\noption is recommended for shared machines like\\nclusters or shared networks where computers are not\\nisolated. (default: False)"
    user_server_shutdown: "Allow users to shutdown an anvi'server via web\\ninterface. (default: False)"
    interface_dot: "--view NAME           Start the interface with a pre-selected view. To see a\\nlist of available views, use --show-views flag.\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_export_svg = "${in_export_svg}"
  }
}