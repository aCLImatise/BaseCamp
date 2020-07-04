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
      ~{true="-test" false="" test} \
      ~{true="-force" false="" force} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    terms: "Terms XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20cross%20referenced%20with%20other%20nomenclatures'."
    genes: "Terms<>genes XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20with%20their%20associated%20genes'."
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    force: "If set, overwrites old data. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}