version 1.0

task ArcasHLAReference {
  input {
    Boolean? update
    Boolean? rebuild
    Boolean? commit
  }
  command <<<
    arcasHLA reference \
      ~{if (update) then "--update" else ""} \
      ~{if (rebuild) then "--rebuild" else ""} \
      ~{if (commit) then "--commit" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0"
  }
  parameter_meta {
    update: "update to latest IMGT/HLA version"
    rebuild: "rebuild HLA database"
    commit: "checkout IMGT/HLA version using commithash"
  }
  output {
    File out_stdout = stdout()
  }
}