class: CommandLineTool
id: anvi_display_contigs_stats.cwl
inputs:
- id: in_report_as_text
  doc: "If you give this flag, Anvi'o will not open new\nbrowser to show Contigs database\
    \ statistics and write\nall stats to TAB separated file and you should also\n\
    give --output-file with this flag otherwise Anvi'o\nwill complain."
  type: File?
  inputBinding:
    prefix: --report-as-text
- id: in_output_file
  doc: File path to store results.
  type: File?
  inputBinding:
    prefix: --output-file
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
    \ where computers are not\nisolated.\n"
  type: boolean?
  inputBinding:
    prefix: --password-protected
- id: in_space_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_report_as_text
  doc: "If you give this flag, Anvi'o will not open new\nbrowser to show Contigs database\
    \ statistics and write\nall stats to TAB separated file and you should also\n\
    give --output-file with this flag otherwise Anvi'o\nwill complain."
  type: File?
  outputBinding:
    glob: $(inputs.in_report_as_text)
- id: out_output_file
  doc: File path to store results.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-display-contigs-stats
