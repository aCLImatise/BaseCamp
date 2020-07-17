version 1.0

task AnviDisplayContigsStats {
  input {
    Boolean? report_as_text
    File? output_file
    String? ip_address
    Int? port_number
    File? browser_path
    Boolean? server_only
    Boolean? password_protected
  }
  command <<<
    anvi-display-contigs-stats \
      ~{true="--report-as-text" false="" report_as_text} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(ip_address) then ("--ip-address " +  '"' + ip_address + '"') else ""} \
      ~{if defined(port_number) then ("--port-number " +  '"' + port_number + '"') else ""} \
      ~{if defined(browser_path) then ("--browser-path " +  '"' + browser_path + '"') else ""} \
      ~{true="--server-only" false="" server_only} \
      ~{true="--password-protected" false="" password_protected}
  >>>
  parameter_meta {
    report_as_text: "If you give this flag, Anvi'o will not open new browser to show Contigs database statistics and write all stats to TAB separated file and you should also give --output-file with this flag otherwise Anvi'o will complain."
    output_file: "File path to store results."
    ip_address: "IP address for the HTTP server. The default ip address (0.0.0.0) should work just fine for most."
    port_number: "Port number to use for anvi'o services. If nothing is declared, anvi'o will try to find a suitable port number, starting from the default port number, 8080."
    browser_path: "By default, anvi'o will use your default browser to launch the interactive interface. If you would like to use something else than your system default, you can provide a full path for an alternative browser using this parameter, and hope for the best. For instance we are using this parameter to call Google's experimental browser, Canary, which performs better with demanding visualizations."
    server_only: "The default behavior is to start the local server, and fire up a browser that connects to the server. If you have other plans, and want to start the server without calling the browser, this is the flag you need."
    password_protected: "If this flag is set, command line tool will ask you to enter a password and interactive interface will be only accessible after entering same password. This option is recommended for shared machines like clusters or shared networks where computers are not isolated."
  }
}