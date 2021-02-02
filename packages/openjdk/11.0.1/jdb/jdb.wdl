version 1.0

task Jdb {
  input {
    Boolean? sourcepath
    String? attach
    String? listen
    Boolean? listen_any
    Boolean? launch
    Boolean? list_connectors
    Int? connect
    Boolean? dbg_trace
    Boolean? t_client
    Boolean? t_server
    Boolean? verbose
    Boolean? namevalue_set_property
    Boolean? classpath
    Boolean? option_target_option
    String options
    String class
    String arguments
  }
  command <<<
    jdb \
      ~{options} \
      ~{class} \
      ~{arguments} \
      ~{if (sourcepath) then "-sourcepath" else ""} \
      ~{if defined(attach) then ("-attach " +  '"' + attach + '"') else ""} \
      ~{if defined(listen) then ("-listen " +  '"' + listen + '"') else ""} \
      ~{if (listen_any) then "-listenany" else ""} \
      ~{if (launch) then "-launch" else ""} \
      ~{if (list_connectors) then "-listconnectors" else ""} \
      ~{if defined(connect) then ("-connect " +  '"' + connect + '"') else ""} \
      ~{if (dbg_trace) then "-dbgtrace" else ""} \
      ~{if (t_client) then "-tclient" else ""} \
      ~{if (t_server) then "-tserver" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (namevalue_set_property) then "-D" else ""} \
      ~{if (classpath) then "-classpath" else ""} \
      ~{if (option_target_option) then "-X" else ""}
  >>>
  parameter_meta {
    sourcepath: "<directories separated by \\\":\\\">\\ndirectories in which to look for source files"
    attach: "attach to a running VM at the specified address using standard connector"
    listen: "wait for a running VM to connect at the specified address using standard connector"
    listen_any: "wait for a running VM to connect at any available address using standard connector"
    launch: "launch VM immediately instead of waiting for 'run' command"
    list_connectors: "list the connectors available in this VM"
    connect: ":<name1>=<value1>,...\\nconnect to target VM using named connector with listed argument values"
    dbg_trace: "[flags] print info for debugging jdb"
    t_client: "run the application in the HotSpot(TM) Client Compiler"
    t_server: "run the application in the HotSpot(TM) Server Compiler"
    verbose: "[:class|gc|jni]\\nturn on verbose mode"
    namevalue_set_property: "<name>=<value>  set a system property"
    classpath: "<directories separated by \\\":\\\">\\nlist directories in which to look for classes"
    option_target_option: "<option>        non-standard target VM option"
    options: ""
    class: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}