version 1.0

task NGSDInit {
  input {
    File? add
    String? force
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDInit \
      ~{if defined(add) then ("-add " +  '"' + add + '"') else ""} \
      ~{if defined(force) then ("-force " +  '"' + force + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    add: "Additional SQL script to execute after database initialization. Default value: ''"
    force: "Database password needed to re-initialize the production database. Default value: ''"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}