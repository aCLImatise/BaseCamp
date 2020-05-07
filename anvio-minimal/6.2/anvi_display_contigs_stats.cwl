class: CommandLineTool
id: anvi_display_contigs_stats.cwl
inputs:
- id: report_as_text
  doc: If you give this flag, Anvi'o will not open new browser to show Contigs database
    statistics and write all stats to TAB separated file and you should also give
    --output-file with this flag otherwise Anvi'o will complain.
  type: boolean
  inputBinding:
    prefix: --report-as-text
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
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
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-display-contigs-stats
