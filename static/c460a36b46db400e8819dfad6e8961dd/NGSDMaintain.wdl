version 1.0

task NGSDMaintain {
  input {
    File? out
    Boolean? fix
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDMaintain \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-fix" false="" fix} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    out: "Output file. If unset, writes to STDOUT. Default value: ''"
    fix: "Correct found errors/inconstistencies. Default value: 'false'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}