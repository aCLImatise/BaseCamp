version 1.0

task GenesToApproved {
  input {
    File? in
    File? out
    Boolean? test
    Boolean? report_ambiguous
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    GenesToApproved \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (report_ambiguous) then "-report_ambiguous" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output TXT file with approved gene symbols. If unset, writes to STDOUT.\\nDefault value: ''"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    report_ambiguous: "Report all matching genes for ambiguous previous/synonymous symbols - instead of an error.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}