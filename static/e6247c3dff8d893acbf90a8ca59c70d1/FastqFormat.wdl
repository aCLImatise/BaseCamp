version 1.0

task FastqFormat {
  input {
    File? in
    File? out
    Int? reads
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqFormat \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input FASTQ file (gzipped or plain)."
    out: "Output text file. If unset, writes to STDOUT. Default value: ''"
    reads: "The number of reads to parse. Default value: '10000'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}