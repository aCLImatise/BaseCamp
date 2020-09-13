version 1.0

task Ncbitk {
  input {
    Boolean? update
    Boolean? update_assembly
    File? from_file
    Boolean? status
    String collection
  }
  command <<<
    ncbitk \
      ~{collection} \
      ~{if (update) then "--update" else ""} \
      ~{if (update_assembly) then "--update-assembly" else ""} \
      ~{if defined(from_file) then ("--from-file " +  '"' + from_file + '"') else ""} \
      ~{if (status) then "--status" else ""}
  >>>
  parameter_meta {
    update: "/ --no-update          Sync your collection with the latest\\nassembly versions"
    update_assembly: "/ --local-assembly\\nDownload the latest assembly summary and\\ntaxonomy dumpOr use your local copies."
    from_file: ""
    status: "Show the current status of your genome"
    collection: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}