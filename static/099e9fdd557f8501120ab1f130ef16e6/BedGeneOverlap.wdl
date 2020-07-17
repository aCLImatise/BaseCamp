version 1.0

task BedGeneOverlap {
  input {
    String? source
    File? in
    File? out
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedGeneOverlap \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    source: "Transcript source database. Valid: 'ccds,ensembl'"
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}