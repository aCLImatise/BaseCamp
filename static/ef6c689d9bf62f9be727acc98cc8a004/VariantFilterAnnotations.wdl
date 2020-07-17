version 1.0

task VariantFilterAnnotations {
  input {
    File? in
    File? out
    File? filters
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VariantFilterAnnotations \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(filters) then ("-filters " +  '"' + filters + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input variant list in GSvar format."
    out: "Output variant list in GSvar format."
    filters: "Filter definition file."
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}