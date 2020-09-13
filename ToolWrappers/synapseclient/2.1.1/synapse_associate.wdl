version 1.0

task SynapseAssociate {
  input {
    Directory? limit_search
    Boolean? perform_recursive_association
    File path
  }
  command <<<
    synapse associate \
      ~{path} \
      ~{if defined(limit_search) then ("--limitSearch " +  '"' + limit_search + '"') else ""} \
      ~{if (perform_recursive_association) then "-r" else ""}
  >>>
  parameter_meta {
    limit_search: "Synapse ID of a container such as project or folder to\\nlimit search to."
    perform_recursive_association: "Perform recursive association with all local files in\\na folder\\n"
    path: "local file path"
  }
  output {
    File out_stdout = stdout()
  }
}