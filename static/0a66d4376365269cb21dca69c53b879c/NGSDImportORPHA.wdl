version 1.0

task NGSDImportORPHA {
  input {
    File? terms
    File? genes
    Boolean? test
    Boolean? force
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDImportORPHA \
      ~{if defined(terms) then ("-terms " +  '"' + terms + '"') else ""} \
      ~{if defined(genes) then ("-genes " +  '"' + genes + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    terms: "Terms XML file from 'http://www.orphadata.org/data/xml/en_product1.xml'."
    genes: "Terms<>genes XML file from 'http://www.orphadata.org/data/xml/en_product6.xml'."
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    force: "If set, overwrites old data.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}