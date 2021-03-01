version 1.0

task VariantQC {
  input {
    File? in
    Boolean? ignore_filter
    File? out
    Boolean? txt
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VariantQC \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (ignore_filter) then "-ignore_filter" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (txt) then "-txt" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input variant list in VCF format."
    ignore_filter: "Ignore filter entries, i.e. consider variants that did not pass filters.\\nDefault value: 'false'"
    out: "Output qcML file. If unset, writes to STDOUT.\\nDefault value: ''"
    txt: "Writes TXT format instead of qcML.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}