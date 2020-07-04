version 1.0

task MechDump {
  input {
    Boolean? headers
    Boolean? forms
    Boolean? links
    Boolean? images
    Boolean? all
    Boolean? text
    String? user
    String? password
    File? cookie_file
    String? agent
    String? agent_alias
    Boolean? absolute
    File? file_vertical_line_url
  }
  command <<<
    mech-dump \
      ~{file_vertical_line_url} \
      ~{true="--headers" false="" headers} \
      ~{true="--forms" false="" forms} \
      ~{true="--links" false="" links} \
      ~{true="--images" false="" images} \
      ~{true="--all" false="" all} \
      ~{true="--text" false="" text} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(cookie_file) then ("--cookie-file " +  '"' + cookie_file + '"') else ""} \
      ~{if defined(agent) then ("--agent " +  '"' + agent + '"') else ""} \
      ~{if defined(agent_alias) then ("--agent-alias " +  '"' + agent_alias + '"') else ""} \
      ~{true="--absolute" false="" absolute}
  >>>
  parameter_meta {
    headers: "Dump HTTP response headers"
    forms: "Dump table of forms (default action)"
    links: "Dump table of links"
    images: "Dump table of images"
    all: "Dump all four of the above, in that order"
    text: "Dumps the textual part of the web page"
    user: "Set the username"
    password: "Set the password"
    cookie_file: "Set the filename to use for persistent cookies"
    agent: "Specify the UserAgent to pass"
    agent_alias: "Specify the alias for the UserAgent to pass. Pick one of: * Windows IE 6 * Windows Mozilla * Mac Safari * Mac Mozilla * Linux Mozilla * Linux Konqueror"
    absolute: "Show URLs as absolute, even if relative in the page"
    file_vertical_line_url: ""
  }
}