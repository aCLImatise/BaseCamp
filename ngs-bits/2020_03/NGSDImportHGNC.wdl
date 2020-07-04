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
      ~{true="-test" false="" test} \
      ~{true="-force" false="" force} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "HGNC flat file (download and unzip ftp://ftp.ebi.ac.uk/pub/databases/genenames/hgnc_complete_set.txt.gz)"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    force: "If set, overwrites old data. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}