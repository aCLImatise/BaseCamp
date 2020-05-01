#!/usr/bin/env cwl-runner

baseCommand:
- anvi-display-contigs-stats
class: CommandLineTool
cwlVersion: v1.0
id: anvi-display-contigs-stats
inputs:
- doc: If you give this flag, Anvi'o will not open new browser to show Contigs database
    statistics and write all stats to TAB separated file and you should also give
    --output-file with this flag otherwise Anvi'o will complain.
  id: report_as_text
  inputBinding:
    prefix: --report-as-text
  type: boolean
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
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
