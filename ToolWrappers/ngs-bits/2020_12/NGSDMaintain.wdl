version 1.0

task NGSDMaintain {
  input {
    File? out
    Boolean? fix
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDMaintain \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (fix) then "-fix" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    fix: "Correct found errors/inconstistencies.\\nDefault value: 'false'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}