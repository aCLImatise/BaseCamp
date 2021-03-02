version 1.0

task BamCleanHaloplex {
  input {
    File? in
    File? out
    Int? min_match
    String? ref
    File? write_cram
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamCleanHaloplex \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_match) then ("-min_match " +  '"' + min_match + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (write_cram) then "-write_cram" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input BAM/CRAM file."
    out: "Output BAM/CRAM file."
    min_match: "Minimum number of CIGAR matches (M).\\nDefault value: '30'"
    ref: "Reference genome for CRAM support (mandatory if CRAM is used).\\nDefault value: ''"
    write_cram: "Writes a CRAM file as output.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_write_cram = "${in_write_cram}"
  }
}