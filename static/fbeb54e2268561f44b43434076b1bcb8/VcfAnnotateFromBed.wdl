version 1.0

task VcfAnnotateFromBed {
  input {
    File? bed
    String? name
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfAnnotateFromBed \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    bed: "BED file used for annotation."
    name: "Annotation name in output VCF file."
    in: "Input VCF file. If unset, reads from STDIN. Default value: ''"
    out: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}