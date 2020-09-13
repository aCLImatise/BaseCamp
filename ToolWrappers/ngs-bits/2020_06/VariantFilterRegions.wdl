version 1.0

task VariantFilterRegions {
  input {
    File? in
    File? out
    File? reg
    Int? single_target_region
    String? mark
    Boolean? in_v
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VariantFilterRegions \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(reg) then ("-reg " +  '"' + reg + '"') else ""} \
      ~{if defined(single_target_region) then ("-r " +  '"' + single_target_region + '"') else ""} \
      ~{if defined(mark) then ("-mark " +  '"' + mark + '"') else ""} \
      ~{if (in_v) then "-inv" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input variant list."
    out: "Output variant list."
    reg: "Input target region in BED format.\\nDefault value: ''"
    single_target_region: "Single target region in the format chr17:41194312-41279500.\\nDefault value: ''"
    mark: "If set, instead of removing variants, they are marked with the given flag in the 'filter' column.\\nDefault value: ''"
    in_v: "Inverts the filter, i.e. variants inside the region are removed/marked.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}