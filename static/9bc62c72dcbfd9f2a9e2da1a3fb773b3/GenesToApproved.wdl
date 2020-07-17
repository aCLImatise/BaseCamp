version 1.0

task GenesToApproved {
  input {
    File? in
    File? out
    Boolean? test
    Boolean? report_ambiguous
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    GenesToApproved \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="-report_ambiguous" false="" report_ambiguous} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input TXT file with one gene symbol per line. If unset, reads from STDIN. Default value: ''"
    out: "Output TXT file with approved gene symbols. If unset, writes to STDOUT. Default value: ''"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    report_ambiguous: "Report all matching genes for ambiguous previous/synonymous symbols - instead of an error. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}