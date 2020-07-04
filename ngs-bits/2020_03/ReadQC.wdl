version 1.0

task ReadQC {
  input {
    File? in_one
    File? in_two
    File? out
    Boolean? txt
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    ReadQC \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-txt" false="" txt} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in_one: "Forward input gzipped FASTQ file(s)."
    in_two: "Reverse input gzipped FASTQ file(s) for paired-end mode (same number of cycles/reads as 'in1'). Default value: ''"
    out: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
    txt: "Writes TXT format instead of qcML. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}