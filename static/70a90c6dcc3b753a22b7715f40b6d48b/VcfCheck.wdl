version 1.0

task VcfCheck {
  input {
    File? in
    File? out
    Int? lines
    File? ref
    Boolean? info
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfCheck \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(lines) then ("-lines " +  '"' + lines + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{true="-info" false="" info} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN. Default value: ''"
    out: "Output file. If unset, writes to STDOUT. Default value: ''"
    lines: "Number of lines to check in the VCF file (unlimited if 0) Default value: '1000'"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used. Default value: ''"
    info: "Add general information about the input file to the output. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}