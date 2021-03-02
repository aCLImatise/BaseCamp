version 1.0

task VcfLeftNormalize {
  input {
    File? in
    File? out
    File? ref
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfLeftNormalize \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output VCF or VCF or VCF.GZ file. If unset, writes to STDOUT.\\nDefault value: ''"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    compression_level: "Output VCF compression level from 1 (fastest) to 9 (best compression). If unset, an unzipped VCF is written.\\nDefault value: '0'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}