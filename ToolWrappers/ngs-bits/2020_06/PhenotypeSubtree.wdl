version 1.0

task PhenotypeSubtree {
  input {
    Int? in
    File? out
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    PhenotypeSubtree \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "HPO phenotype identifier, e.g. HP:0002066."
    out: "Output TSV file with phenotypes identifiers (column 1) and names (column 2). If unset, writes to STDOUT.\\nDefault value: ''"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}