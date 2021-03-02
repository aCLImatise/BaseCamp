version 1.0

task BedpeAnnotateCnvOverlap {
  input {
    File? in
    File? out
    File? cnv
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedpeAnnotateCnvOverlap \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(cnv) then ("-cnv " +  '"' + cnv + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input SV file (in Bedpe format)."
    out: "Output SV file (in Bedpe format)."
    cnv: "Input CNV file (in TSV format)."
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}