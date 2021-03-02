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
      ~{if (info) then "-info" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    lines: "Number of lines to check in the VCF file (unlimited if 0)\\nDefault value: '1000'"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    info: "Add general information about the input file to the output.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}