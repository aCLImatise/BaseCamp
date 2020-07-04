version 1.0

task Fissfc {
  input {
    String? url
    String? credentials
    Boolean? verbose
    Boolean? yes
    Boolean? list_search_commands
    Array[String] function
  }
  command <<<
    fissfc \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(credentials) then ("--credentials " +  '"' + credentials + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--yes" false="" yes} \
      ~{true="-l" false="" list_search_commands} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""}
  >>>
  parameter_meta {
    url: "Firecloud API root URL [default: https://api.firecloud.org/api/]"
    credentials: "Firecloud credentials file"
    verbose: "Emit progressively more detailed feedback during execution, e.g. to confirm when actions have completed or to show URL and parameters of REST calls. Multiple -V may be given."
    yes: "Assume yes for any prompts"
    list_search_commands: "[CMD], --list [CMD] list or search available commands and exit"
    function: "Show the code for the given command(s) and exit"
  }
}