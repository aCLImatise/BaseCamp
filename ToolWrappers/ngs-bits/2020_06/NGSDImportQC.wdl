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
      ~{if (test) then "-test" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    obo: "HPO ontology file from 'https://github.com/imgag/megSAP/raw/master/data/misc/qc-cv.obo'."
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    debug: "Enable debug output.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}