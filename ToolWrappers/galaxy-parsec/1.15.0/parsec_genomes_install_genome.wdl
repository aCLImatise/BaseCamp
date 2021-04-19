version 1.0

task ParsecGenomesInstallGenome {
  input {
    String? func
    String? source
    String? db_key
    String? ncbi_name
    String? ensembl_db_key
    String? url_db_key
    String? indexers
  }
  command <<<
    parsec genomes install_genome \
      ~{if defined(func) then ("--func " +  '"' + func + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(db_key) then ("--dbkey " +  '"' + db_key + '"') else ""} \
      ~{if defined(ncbi_name) then ("--ncbi_name " +  '"' + ncbi_name + '"') else ""} \
      ~{if defined(ensembl_db_key) then ("--ensembl_dbkey " +  '"' + ensembl_db_key + '"') else ""} \
      ~{if defined(url_db_key) then ("--url_dbkey " +  '"' + url_db_key + '"') else ""} \
      ~{if defined(indexers) then ("--indexers " +  '"' + indexers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    func: "Allowed values: 'download', Download and index;\\n'index', Index only  [default: download]"
    source: "Data source for this build. Can be: UCSC, Ensembl,\\nNCBI, URL"
    db_key: "DB key of the build to download, ignored unless 'UCSC'\\nis specified as the source"
    ncbi_name: "NCBI's genome identifier, ignored unless NCBI is\\nspecified as the source"
    ensembl_db_key: "Ensembl's genome identifier, ignored unless Ensembl is\\nspecified as the source"
    url_db_key: "DB key to use for this build, ignored unless URL is\\nspecified as the source"
    indexers: "POST array of indexers to run after downloading\\n(indexers[] = first, indexers[] = second, ...)"
  }
  output {
    File out_stdout = stdout()
  }
}