version 1.0

task NGSDImportHGNC {
  input {
    File? in
    Boolean? test
    Boolean? force
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDImportHGNC \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "HGNC flat file (download ftp://ftp.ebi.ac.uk/pub/databases/genenames/hgnc/tsv/hgnc_complete_set.txt)"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    force: "If set, overwrites old data.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}