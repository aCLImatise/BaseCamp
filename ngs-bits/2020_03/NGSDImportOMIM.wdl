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
      ~{true="-test" false="" test} \
      ~{true="-force" false="" force} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    gene: "OMIM 'mim2gene.txt' file from 'http://omim.org/downloads/'."
    morbid: "OMIM 'morbidmap.txt' file from 'http://omim.org/downloads/'."
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    force: "If set, overwrites old data. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}