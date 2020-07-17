version 1.0

task VariantQC {
  input {
    File? in
    Boolean? ignore_filter
    File? out
    Boolean? txt
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VariantQC \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{true="-ignore_filter" false="" ignore_filter} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-txt" false="" txt} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input variant list in VCF format."
    ignore_filter: "Ignore filter entries, i.e. consider variants that did not pass filters. Default value: 'false'"
    out: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
    txt: "Writes TXT format instead of qcML. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}