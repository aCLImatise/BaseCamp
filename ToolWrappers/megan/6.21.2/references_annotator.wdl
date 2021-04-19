version 1.0

task Referencesannotator {
  input {
    Boolean? in
    File? out
    Boolean? parse_tax_on_names
    Boolean? map_db
    Boolean? acc_two_tax_a
    Boolean? syn_two_tax_a
    Boolean? acc_two_ec
    Boolean? syn_two_ec
    Boolean? tags_four_ec
    Boolean? acc_two_eggnog
    Boolean? syn_two_eggnog
    Boolean? tags_four_eggnog
    Boolean? acc_two_gt_db
    Boolean? syn_two_gt_db
    Boolean? tags_four_gt_db
    Boolean? acc_two_interpro_two_go
    Boolean? syn_two_interpro_two_go
    Boolean? tags_four_interpro_two_go
    Boolean? acc_two_kegg
    Boolean? syn_two_kegg
    Boolean? tags_four_kegg
    Boolean? acc_two_seed
    Boolean? syn_two_seed
    Boolean? tags_four_seed
    Boolean? first_word_is_accession
    Boolean? accession_tags
    Boolean? verbose
  }
  command <<<
    references_annotator \
      ~{if (in) then "--in" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (parse_tax_on_names) then "--parseTaxonNames" else ""} \
      ~{if (map_db) then "--mapDB" else ""} \
      ~{if (acc_two_tax_a) then "--acc2taxa" else ""} \
      ~{if (syn_two_tax_a) then "--syn2taxa" else ""} \
      ~{if (acc_two_ec) then "--acc2ec" else ""} \
      ~{if (syn_two_ec) then "--syn2ec" else ""} \
      ~{if (tags_four_ec) then "--tags4ec" else ""} \
      ~{if (acc_two_eggnog) then "--acc2eggnog" else ""} \
      ~{if (syn_two_eggnog) then "--syn2eggnog" else ""} \
      ~{if (tags_four_eggnog) then "--tags4eggnog" else ""} \
      ~{if (acc_two_gt_db) then "--acc2gtdb" else ""} \
      ~{if (syn_two_gt_db) then "--syn2gtdb" else ""} \
      ~{if (tags_four_gt_db) then "--tags4gtdb" else ""} \
      ~{if (acc_two_interpro_two_go) then "--acc2interpro2go" else ""} \
      ~{if (syn_two_interpro_two_go) then "--syn2interpro2go" else ""} \
      ~{if (tags_four_interpro_two_go) then "--tags4interpro2go" else ""} \
      ~{if (acc_two_kegg) then "--acc2kegg" else ""} \
      ~{if (syn_two_kegg) then "--syn2kegg" else ""} \
      ~{if (tags_four_kegg) then "--tags4kegg" else ""} \
      ~{if (acc_two_seed) then "--acc2seed" else ""} \
      ~{if (syn_two_seed) then "--syn2seed" else ""} \
      ~{if (tags_four_seed) then "--tags4seed" else ""} \
      ~{if (first_word_is_accession) then "--firstWordIsAccession" else ""} \
      ~{if (accession_tags) then "--accessionTags" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  parameter_meta {
    in: "[string]                    Input references file (stdin, .gz ok). Mandatory option."
    out: "[string]                   Output file (stdout or .gz ok). Mandatory option."
    parse_tax_on_names: "Parse taxon names. Default value: true."
    map_db: "[string]               MEGAN mapping db (file megan-map.db)."
    acc_two_tax_a: "[string]            Accession-to-Taxonomy mapping file."
    syn_two_tax_a: "[string]            Synonyms-to-Taxonomy mapping file."
    acc_two_ec: "[string]             Accession-to-EC mapping file."
    syn_two_ec: "[string]             Synonyms-to-EC mapping file."
    tags_four_ec: "[string]            Tags for EC id parsing (must set to activate id parsing)."
    acc_two_eggnog: "[string]     Accession-to-EGGNOG mapping file."
    syn_two_eggnog: "[string]     Synonyms-to-EGGNOG mapping file."
    tags_four_eggnog: "[string]    Tags for EGGNOG id parsing (must set to activate id parsing)."
    acc_two_gt_db: "[string]         Accession-to-GTDB mapping file."
    syn_two_gt_db: "[string]         Synonyms-to-GTDB mapping file."
    tags_four_gt_db: "[string]        Tags for GTDB id parsing (must set to activate id parsing)."
    acc_two_interpro_two_go: "[string]   Accession-to-INTERPRO2GO mapping file."
    syn_two_interpro_two_go: "[string]   Synonyms-to-INTERPRO2GO mapping file."
    tags_four_interpro_two_go: "[string]   Tags for INTERPRO2GO id parsing (must set to activate id parsing)."
    acc_two_kegg: "[string]         Accession-to-KEGG mapping file."
    syn_two_kegg: "[string]         Synonyms-to-KEGG mapping file."
    tags_four_kegg: "[string]        Tags for KEGG id parsing (must set to activate id parsing)."
    acc_two_seed: "[string]         Accession-to-SEED mapping file."
    syn_two_seed: "[string]         Synonyms-to-SEED mapping file."
    tags_four_seed: "[string]        Tags for SEED id parsing (must set to activate id parsing)."
    first_word_is_accession: "First word in reference header is accession number. Default value: true."
    accession_tags: "[string(s)]   List of accession tags. Default value(s): 'gb|' 'ref|'."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}