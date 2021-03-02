version 1.0

task Ncbitk {
  input {
    Boolean? no_update
    Boolean? update_assembly
    File? from_file
    String collection
  }
  command <<<
    ncbitk \
      ~{collection} \
      ~{if (no_update) then "--no-update" else ""} \
      ~{if (update_assembly) then "--update-assembly" else ""} \
      ~{if defined(from_file) then ("--from-file " +  '"' + from_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_update: "Sync your collection with the latest\\nassembly versions"
    update_assembly: "Download the latest assembly summary and\\ntaxonomy dumpOr use your local copies."
    from_file: "Show the current status of your genome"
    collection: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}