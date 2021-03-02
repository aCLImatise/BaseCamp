version 1.0

task NGSDImportOMIM {
  input {
    File? gene
    File? morbid
    Boolean? test
    Boolean? force
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDImportOMIM \
      ~{if defined(gene) then ("-gene " +  '"' + gene + '"') else ""} \
      ~{if defined(morbid) then ("-morbid " +  '"' + morbid + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene: "OMIM 'mim2gene.txt' file from 'http://omim.org/downloads/'."
    morbid: "OMIM 'morbidmap.txt' file from 'http://omim.org/downloads/'."
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    force: "If set, overwrites old data.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}