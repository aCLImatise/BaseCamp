version 1.0

task FastaInfo {
  input {
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastaInfo \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input FASTA file. If unset, reads from STDIN. Default value: ''"
    out: "Output file. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}