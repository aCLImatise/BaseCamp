version 1.0

task NGSDExportGenes {
  input {
    File? out
    Boolean? hpo
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDExportGenes \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-hpo" false="" hpo} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    out: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
    hpo: "Annotate with HPO terms (slow). Default value: 'false'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}