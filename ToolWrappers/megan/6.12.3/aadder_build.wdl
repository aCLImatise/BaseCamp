version 1.0

task Aadderbuild {
  input {
    Boolean? input_gff
    Boolean? index
    Boolean? acc_two_tax_a
    Boolean? acc_two_eggnog
    Boolean? acc_two_interpro_two_go
    Boolean? acc_two_kegg
    Boolean? acc_two_seed
    Boolean? extra_strict
    Boolean? verbose
  }
  command <<<
    aadder_build \
      ~{if (input_gff) then "--inputGFF" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (acc_two_tax_a) then "--acc2taxa" else ""} \
      ~{if (acc_two_eggnog) then "--acc2eggnog" else ""} \
      ~{if (acc_two_interpro_two_go) then "--acc2interpro2go" else ""} \
      ~{if (acc_two_kegg) then "--acc2kegg" else ""} \
      ~{if (acc_two_seed) then "--acc2seed" else ""} \
      ~{if (extra_strict) then "--extraStrict" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_gff: "[string(s)]        Input GFF3 files or directory (.gz ok). Mandatory option."
    index: "[string]                 Index directory. Mandatory option."
    acc_two_tax_a: "[string]            Accession-to-Taxonomy mapping file."
    acc_two_eggnog: "[string]     Accession-to-EGGNOG mapping file."
    acc_two_interpro_two_go: "[string]   Accession-to-INTERPRO2GO mapping file."
    acc_two_kegg: "[string]         Accession-to-KEGG mapping file."
    acc_two_seed: "[string]         Accession-to-SEED mapping file."
    extra_strict: "When given an input directory, look inside every input file to check that it is indeed in GFF3 format. Default value: false."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
  }
}