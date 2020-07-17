version 1.0

task BedToFasta {
  input {
    File? in
    File? out
    File? ref
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedToFasta \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BED file."
    out: "Output FASTA file. If unset, writes to STDOUT. Default value: ''"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}