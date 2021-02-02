version 1.0

task SynapseShow {
  input {
    Directory? limit_search
  }
  command <<<
    synapse show \
      ~{if defined(limit_search) then ("--limitSearch " +  '"' + limit_search + '"') else ""}
  >>>
  parameter_meta {
    limit_search: "Synapse ID of a container such as project or folder to\\nlimit search for provenance files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}