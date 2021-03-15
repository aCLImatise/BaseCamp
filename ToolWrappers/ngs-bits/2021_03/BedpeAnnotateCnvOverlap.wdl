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
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input SV file (in BEDPE format)."
    out: "Output SV file (in BEDPE format)."
    cnv: "Input CNV file (in TSV format)."
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}