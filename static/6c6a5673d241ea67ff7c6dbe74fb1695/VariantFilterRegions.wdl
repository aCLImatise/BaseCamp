version 1.0

task VariantFilterRegions {
  input {
    File? in
    File? out
    File? reg
    Int? single_target_region
    String? mark
    Boolean? in_v
    String? mode
    Int? compression_level
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
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input variant list. In VCF (default) or GSvar format."
    out: "Output variant list (same format as 'in')."
    reg: "Input target region in BED format.\\nDefault value: ''"
    single_target_region: "Single target region in the format chr17:41194312-41279500.\\nDefault value: ''"
    mark: "If set, instead of removing variants, they are marked with the given flag in the 'filter' column.\\nDefault value: ''"
    in_v: "Inverts the filter, i.e. variants inside the region are removed/marked.\\nDefault value: 'false'"
    mode: "Mode (input format).\\nDefault value: 'vcf'\\nValid: 'vcf,gsvar'"
    compression_level: "Output VCF compression level from 1 (fastest) to 9 (best compression). If unset, an unzipped VCF is written.\\nDefault value: '0'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}