version 1.0

task VariantRanking {
  input {
    File? in
    String? hpo_ids
    File? out
    Int? algorithm
    Boolean? add_explaination
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VariantRanking \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(hpo_ids) then ("-hpo_ids " +  '"' + hpo_ids + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(algorithm) then ("-algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if (add_explaination) then "-add_explaination" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input variant list in GSvar format."
    hpo_ids: "Comma-separated list of HPO identifiers."
    out: "Output variant list in GSvar format."
    algorithm: "Algorithm used for ranking.\\nDefault value: 'GSvar_v1'\\nValid: 'GSvar_v1,GSvar_v1_noNGSD'"
    add_explaination: "Add a third column with an explaination how that score was calculated.\\nDefault value: 'false'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}