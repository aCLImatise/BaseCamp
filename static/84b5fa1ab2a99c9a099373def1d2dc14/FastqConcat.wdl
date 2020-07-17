version 1.0

task FastqConcat {
  input {
    File? in
    File? out
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqConcat \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input (gzipped) FASTQ files."
    out: "Output gzipped FASTQ file."
    compression_level: "gzip compression level from 1 (fastest) to 9 (best compression). Default value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}