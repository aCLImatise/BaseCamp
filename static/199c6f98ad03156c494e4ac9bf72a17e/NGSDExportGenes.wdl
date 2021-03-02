version 1.0

task NGSDExportGenes {
  input {
    File? out
    Boolean? hpo
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDExportGenes \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (hpo) then "-hpo" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    out: "Output TSV file. If unset, writes to STDOUT.\\nDefault value: ''"
    hpo: "Annotate with HPO terms (slow).\\nDefault value: 'false'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}