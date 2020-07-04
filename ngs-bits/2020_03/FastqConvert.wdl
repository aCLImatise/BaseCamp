version 1.0

task FastqConvert {
  input {
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqConvert \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input gzipped FASTQ file."
    out: "Output gzipped FASTQ file."
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}