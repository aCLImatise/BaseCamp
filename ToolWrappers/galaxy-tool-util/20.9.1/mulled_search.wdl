version 1.0

task Mulledsearch {
  input {
    Array[String] destination
    String? organization
    String? channel
    Boolean? non_strict
    Boolean? json
    Array[String] search
  }
  command <<<
    mulled_search \
      ~{if defined(destination) then ("--destination " +  '"' + destination + '"') else ""} \
      ~{if defined(organization) then ("--organization " +  '"' + organization + '"') else ""} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if (non_strict) then "--non-strict" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if defined(search) then ("--search " +  '"' + search + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0"
  }
  parameter_meta {
    destination: "Choose where to search. Options are 'conda', 'quay',\\n'singularity' and 'github'. If no option are given,\\nall will be searched."
    organization: "Change quay organization to search; default is\\nbiocontainers."
    channel: "Change conda channel to search; default is bioconda."
    non_strict: "Autocorrection of typos activated. Lists more results\\nbut can be confusing. For too many queries quay.io\\nblocks the request and the results can be incomplete."
    json: "Returns results as JSON."
    search: "The name of the tool(s) to search for.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}