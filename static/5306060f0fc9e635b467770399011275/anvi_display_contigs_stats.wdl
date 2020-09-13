version 1.0

task Anvidisplaycontigsstats {
  input {
    File? report_as_text
    File? output_file
    Float? ip_address
    Int? port_number
    File? browser_path
    Boolean? server_only
    Boolean? password_protected
    String space_dot
  }
  command <<<
    anvi_display_contigs_stats \
      ~{space_dot} \
      ~{if (report_as_text) then "--report-as-text" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(ip_address) then ("--ip-address " +  '"' + ip_address + '"') else ""} \
      ~{if defined(port_number) then ("--port-number " +  '"' + port_number + '"') else ""} \
      ~{if defined(browser_path) then ("--browser-path " +  '"' + browser_path + '"') else ""} \
      ~{if (server_only) then "--server-only" else ""} \
      ~{if (password_protected) then "--password-protected" else ""}
  >>>
  parameter_meta {
    report_as_text: "If you give this flag, Anvi'o will not open new\\nbrowser to show Contigs database statistics and write\\nall stats to TAB separated file and you should also\\ngive --output-file with this flag otherwise Anvi'o\\nwill complain."
    output_file: "File path to store results."
    ip_address: "IP address for the HTTP server. The default ip address\\n(0.0.0.0) should work just fine for most."
    port_number: "Port number to use for anvi'o services. If nothing is\\ndeclared, anvi'o will try to find a suitable port\\nnumber, starting from the default port number, 8080."
    browser_path: "By default, anvi'o will use your default browser to\\nlaunch the interactive interface. If you would like to\\nuse something else than your system default, you can\\nprovide a full path for an alternative browser using\\nthis parameter, and hope for the best. For instance we\\nare using this parameter to call Google's experimental\\nbrowser, Canary, which performs better with demanding\\nvisualizations."
    server_only: "The default behavior is to start the local server, and\\nfire up a browser that connects to the server. If you\\nhave other plans, and want to start the server without\\ncalling the browser, this is the flag you need."
    password_protected: "If this flag is set, command line tool will ask you to\\nenter a password and interactive interface will be\\nonly accessible after entering same password. This\\noption is recommended for shared machines like\\nclusters or shared networks where computers are not\\nisolated.\\n"
    space_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_report_as_text = "${in_report_as_text}"
    File out_output_file = "${in_output_file}"
  }
}