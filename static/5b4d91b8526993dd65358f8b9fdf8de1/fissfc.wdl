version 1.0

task Fissfc {
  input {
    String? url
    File? credentials
    Boolean? verbose
    Boolean? yes
    Boolean? list_search_commands
    Array[String] function
  }
  command <<<
    fissfc \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(credentials) then ("--credentials " +  '"' + credentials + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (yes) then "--yes" else ""} \
      ~{if (list_search_commands) then "-l" else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/firecloud:0.16.31--pyh3252c3a_0"
  }
  parameter_meta {
    url: "Firecloud API root URL [default:\\nhttps://api.firecloud.org/api/]"
    credentials: "Firecloud credentials file"
    verbose: "Emit progressively more detailed feedback during\\nexecution, e.g. to confirm when actions have completed\\nor to show URL and parameters of REST calls. Multiple\\n-V may be given."
    yes: "Assume yes for any prompts"
    list_search_commands: "[CMD], --list [CMD]\\nlist or search available commands and exit"
    function: "Show the code for the given command(s) and exit"
  }
  output {
    File out_stdout = stdout()
  }
}