version 1.0

task VcfAnnotateFromBed {
  input {
    File? bed
    File? name
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
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    bed: "BED file used for annotation."
    name: "Annotation name in output VCF file."
    in: "Input VCF file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output VCF list. If unset, writes to STDOUT.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
  }
}