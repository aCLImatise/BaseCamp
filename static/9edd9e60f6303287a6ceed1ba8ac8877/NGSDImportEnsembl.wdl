version 1.0

task NGSDImportEnsembl {
  input {
    File? in
    Boolean? all
    Boolean? test
    Boolean? force
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDImportEnsembl \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{true="-all" false="" all} \
      ~{true="-test" false="" test} \
      ~{true="-force" false="" force} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Ensembl transcript file (download and unzip ftp://ftp.ensembl.org/pub/grch37/release-87/gff3/homo_sapiens/Homo_sapiens.GRCh37.87.chr.gff3.gz)."
    all: "If set, all transcripts are imported (the default is to skip transcripts not labeled as with the 'GENCODE basic' tag). Default value: 'false'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    force: "If set, overwrites old data. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}