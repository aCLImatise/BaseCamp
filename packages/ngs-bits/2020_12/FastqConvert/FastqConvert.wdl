version 1.0

task FastqConvert {
  input {
    File? in
    File? out
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqConvert \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input gzipped FASTQ file."
    out: "Output gzipped FASTQ file."
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}