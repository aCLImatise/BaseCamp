version 1.0

task BedAnnotateGenes {
  input {
    File? in
    File? out
    Int? extend
    Boolean? test
    Boolean? clear
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedAnnotateGenes \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(extend) then ("-extend " +  '"' + extend + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="-clear" false="" clear} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    extend: "The number of bases to extend the gene regions before annotation. Default value: '0'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    clear: "Clear all annotations present in the input file. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}