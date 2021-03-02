version 1.0

task BedSubtract {
  input {
    File? in_two
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedSubtract \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in_two: "Input BED file which is subtracted from 'in'."
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}