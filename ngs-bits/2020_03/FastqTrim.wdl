version 1.0

task FastqTrim {
  input {
    File? in
    File? out
    Int? start
    Int? end
    Int? len
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqTrim \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("-end " +  '"' + end + '"') else ""} \
      ~{if defined(len) then ("-len " +  '"' + len + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input gzipped FASTQ file."
    out: "Output gzipped FASTQ file."
    start: "Trim this number of bases from the start of the read. Default value: '0'"
    end: "Trim this number of bases from the end of the read. Default value: '0'"
    len: "Restrict read length to this value (after trimming from start/end). Default value: '0'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}