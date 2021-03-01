version 1.0

task AgfusionBuild {
  input {
    File? dir
    String? species
    Int? release
    File? pfam
    String? server
  }
  command <<<
    agfusion build \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if defined(pfam) then ("--pfam " +  '"' + pfam + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "Directory to write database file to."
    species: "The species (e.g. homo_sapiens)."
    release: "The ensembl release (e.g. 87)."
    pfam: "File containing PFAM ID mappings."
    server: "(optional) Ensembl server (default\\nensembldb.ensembl.org)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}