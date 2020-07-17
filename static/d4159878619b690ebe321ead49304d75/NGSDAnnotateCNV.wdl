version 1.0

task NGSDAnnotateCNV {
  input {
    File? in
    File? out
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDAnnotateCNV \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "TSV file containing CNV."
    out: "TSV output file."
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}