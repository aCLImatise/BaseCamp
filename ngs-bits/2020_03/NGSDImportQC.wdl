version 1.0

task NGSDImportQC {
  input {
    File? obo
    Boolean? test
    Boolean? debug
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDImportQC \
      ~{if defined(obo) then ("-obo " +  '"' + obo + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="-debug" false="" debug} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    obo: "HPO ontology file from 'https://github.com/imgag/megSAP/raw/master/data/misc/qc-cv.obo'."
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    debug: "Enable debug output. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}