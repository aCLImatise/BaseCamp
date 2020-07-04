version 1.0

task NGSDImportGeneInfo {
  input {
    File? constraint
    Boolean? test
    Boolean? force
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDImportGeneInfo \
      ~{if defined(constraint) then ("-constraint " +  '"' + constraint + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="-force" false="" force} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    constraint: "gnomAD gene contraint file (download and unzip https://storage.googleapis.com/gnomad-public/release/2.1.1/constraint/gnomad.v2.1.1.lof_metrics.by_gene.txt.bgz)."
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    force: "If set, overwrites old data. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}