version 1.0

task BedAnnotateGC {
  input {
    File? in
    File? out
    File? ref
    Int? extend
    Boolean? clear
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedAnnotateGC \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(extend) then ("-extend " +  '"' + extend + '"') else ""} \
      ~{true="-clear" false="" clear} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    ref: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini' file is used. Default value: ''"
    extend: "Bases to extend around the input region for calculating the GC content. Default value: '0'"
    clear: "Clear all annotations present in the input file. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}