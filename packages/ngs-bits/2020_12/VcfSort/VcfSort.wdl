version 1.0

task VcfSort {
  input {
    File? in
    File? out
    Boolean? qual
    File? fai
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfSort \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (qual) then "-qual" else ""} \
      ~{if defined(fai) then ("-fai " +  '"' + fai + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input variant list in VCF format."
    out: "Output variant list in VCF or VCF.GZ format."
    qual: "Also sort according to variant quality. Ignored if 'fai' file is given.\\nDefault value: 'false'"
    fai: "FAI file defining different chromosome order.\\nDefault value: ''"
    compression_level: "Output VCF compression level from 1 (fastest) to 9 (best compression). If unset, an unzipped VCF is written.\\nDefault value: '0'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}