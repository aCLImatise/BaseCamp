version 1.0

task Mechdump {
  input {
    Boolean? headers
    Boolean? dump_table_forms
    Boolean? links
    Boolean? images
    Boolean? dump_four_above
    Boolean? text
    String? user
    String? password
    File? cookie_file
    String? agent
    Int? agent_alias
    Boolean? show_urls_as
    String dump
    String dumps
    String proxy
    String set
    String show
    String specify
    String var_18
    String var_19
    String http
    String urls
    String var_22
    String order
    String settings
    String table
    String this
    String user_agent
    String are
    String var_as
    File filename
    String four
    String of
    String response
    String textual
    String var_35
    String var_36
    String part
    String to
    String specified
    String var_40
    String through
    String use
    String above
    String for
    String is
    String environment
    String persistent
    String relevant_dot
    String web
    String var_50
  }
  command <<<
    mech_dump \
      ~{dump} \
      ~{dumps} \
      ~{proxy} \
      ~{set} \
      ~{show} \
      ~{specify} \
      ~{var_18} \
      ~{var_19} \
      ~{http} \
      ~{urls} \
      ~{var_22} \
      ~{order} \
      ~{settings} \
      ~{table} \
      ~{this} \
      ~{user_agent} \
      ~{are} \
      ~{var_as} \
      ~{filename} \
      ~{four} \
      ~{of} \
      ~{response} \
      ~{textual} \
      ~{var_35} \
      ~{var_36} \
      ~{part} \
      ~{to} \
      ~{specified} \
      ~{var_40} \
      ~{through} \
      ~{use} \
      ~{above} \
      ~{for} \
      ~{is} \
      ~{environment} \
      ~{persistent} \
      ~{relevant_dot} \
      ~{web} \
      ~{var_50} \
      ~{if (headers) then "--headers" else ""} \
      ~{if (dump_table_forms) then "--forms" else ""} \
      ~{if (links) then "--links" else ""} \
      ~{if (images) then "--images" else ""} \
      ~{if (dump_four_above) then "--all" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(cookie_file) then ("--cookie-file " +  '"' + cookie_file + '"') else ""} \
      ~{if defined(agent) then ("--agent " +  '"' + agent + '"') else ""} \
      ~{if defined(agent_alias) then ("--agent-alias " +  '"' + agent_alias + '"') else ""} \
      ~{if (show_urls_as) then "--absolute" else ""}
  >>>
  parameter_meta {
    headers: "Dump HTTP response headers"
    dump_table_forms: "Dump table of forms (default action)"
    links: "Dump table of links"
    images: "Dump table of images"
    dump_four_above: "Dump all four of the above, in that order"
    text: "Dumps the textual part of the web page"
    user: "Set the username"
    password: "Set the password"
    cookie_file: "Set the filename to use for persistent cookies"
    agent: "Specify the UserAgent to pass"
    agent_alias: "Specify the alias for the UserAgent to pass.\\nPick one of:\\n* Windows IE 6\\n* Windows Mozilla\\n* Mac Safari\\n* Mac Mozilla\\n* Linux Mozilla\\n* Linux Konqueror"
    show_urls_as: "Show URLs as absolute, even if relative in the page"
    dump: ""
    dumps: ""
    proxy: ""
    set: ""
    show: ""
    specify: ""
    var_18: ""
    var_19: ""
    http: ""
    urls: ""
    var_22: ""
    order: ""
    settings: ""
    table: ""
    this: ""
    user_agent: ""
    are: ""
    var_as: ""
    filename: ""
    four: ""
    of: ""
    response: ""
    textual: ""
    var_35: ""
    var_36: ""
    part: ""
    to: ""
    specified: ""
    var_40: ""
    through: ""
    use: ""
    above: ""
    for: ""
    is: ""
    environment: ""
    persistent: ""
    relevant_dot: ""
    web: ""
    var_50: ""
  }
  output {
    File out_stdout = stdout()
  }
}