version 1.0

task Nunitconsole {
  input {
    String? fixture
    String? run
    String? config
    File? xml
    File? transform
    Boolean? xml_console
    File? file_receive_outstr
    File? err
    Boolean? labels
    String? include
    String? exclude
    String? domain
    Boolean? no_shadow
    Boolean? no_thread
    Boolean? wait
    Boolean? nologo
    Boolean? no_dots
  }
  command <<<
    nunit_console \
      ~{if defined(fixture) then ("-fixture " +  '"' + fixture + '"') else ""} \
      ~{if defined(run) then ("-run " +  '"' + run + '"') else ""} \
      ~{if defined(config) then ("-config " +  '"' + config + '"') else ""} \
      ~{if defined(xml) then ("-xml " +  '"' + xml + '"') else ""} \
      ~{if defined(transform) then ("-transform " +  '"' + transform + '"') else ""} \
      ~{if (xml_console) then "-xmlConsole" else ""} \
      ~{if defined(file_receive_outstr) then ("-output " +  '"' + file_receive_outstr + '"') else ""} \
      ~{if defined(err) then ("-err " +  '"' + err + '"') else ""} \
      ~{if (labels) then "-labels" else ""} \
      ~{if defined(include) then ("-include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(domain) then ("-domain " +  '"' + domain + '"') else ""} \
      ~{if (no_shadow) then "-noshadow" else ""} \
      ~{if (no_thread) then "-nothread" else ""} \
      ~{if (wait) then "-wait" else ""} \
      ~{if (nologo) then "-nologo" else ""} \
      ~{if (no_dots) then "-nodots" else ""}
  >>>
  parameter_meta {
    fixture: "Test fixture to be loaded (Short format: -load=STR)"
    run: "Name of the test to run"
    config: "Project configuration to load"
    xml: "Name of XML output file"
    transform: "Name of transform file"
    xml_console: "Display XML to the console"
    file_receive_outstr: "File to receive test output (Short format: -out=STR)"
    err: "File to receive test error output"
    labels: "Label each test in stdOut"
    include: "List of categories to include"
    exclude: "List of categories to exclude"
    domain: "AppDomain Usage for Tests"
    no_shadow: "Disable shadow copy when running in separate domain"
    no_thread: "Disable use of a separate thread for tests"
    wait: "Wait for input before closing console window"
    nologo: "Do not display the logo"
    no_dots: "Do not display progress"
  }
  output {
    File out_stdout = stdout()
    File out_xml = "${in_xml}"
    File out_file_receive_outstr = "${in_file_receive_outstr}"
    File out_err = "${in_err}"
  }
}