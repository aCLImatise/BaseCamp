version 1.0

task SvFilterAnnotations {
  input {
    File? in
    File? out
    File? filters
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SvFilterAnnotations \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(filters) then ("-filters " +  '"' + filters + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input structural variant list in Bedpe format."
    out: "Output structural variant list in Bedpe format."
    filters: "Filter definition file."
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}