version 1.0

task SynapseGet {
  input {
    String? query
    Boolean? recursive
    Boolean? follow_link
    File? limit_search
    File? download_location
    Boolean? multithreaded
    String? v
    Int syn_one_two_three
  }
  command <<<
    synapse get \
      ~{syn_one_two_three} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (follow_link) then "--followLink" else ""} \
      ~{if defined(limit_search) then ("--limitSearch " +  '"' + limit_search + '"') else ""} \
      ~{if defined(download_location) then ("--downloadLocation " +  '"' + download_location + '"') else ""} \
      ~{if (multithreaded) then "--multiThreaded" else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0"
  }
  parameter_meta {
    query: "Optional query parameter, will fetch all of the\\nentities returned by a query (see query for help)."
    recursive: "Fetches content in Synapse recursively contained in\\nthe parentId specified by id."
    follow_link: "Determines whether the link returns the target Entity."
    limit_search: "Synapse ID of a container such as project or folder to\\nlimit search for files if using a path."
    download_location: "Directory to download file to [default: ./]."
    multithreaded: "Download file using a multiple threaded\\nimplementation. This flag will be removed in the\\nfuture when multi-threaded download is deemed fully\\nstable and becomes the default implementation.\\n"
    v: ""
    syn_one_two_three: "Synapse ID of form syn123 of desired data object."
  }
  output {
    File out_stdout = stdout()
  }
}