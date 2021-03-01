version 1.0

task Referencesannotator {
  input {
    Boolean? in
    File? out
    Boolean? parse_tax_on_names
    Boolean? gi_two_tax_a
    Boolean? acc_two_tax_a
    Boolean? syn_two_tax_a
    Boolean? gi_two_eggnog
    Boolean? acc_two_eggnog
    Boolean? syn_two_eggnog
    Boolean? tags_four_eggnog
    Boolean? gi_two_interpro_two_go
    Boolean? acc_two_interpro_two_go
    Boolean? syn_two_interpro_two_go
    Boolean? tags_four_interpro_two_go
    Boolean? gi_two_kegg
    Boolean? acc_two_kegg
    Boolean? syn_two_kegg
    Boolean? tags_four_kegg
    Boolean? gi_two_seed
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
      ~{if (gi_two_tax_a) then "--gi2taxa" else ""} \
      ~{if (acc_two_tax_a) then "--acc2taxa" else ""} \
      ~{if (syn_two_tax_a) then "--syn2taxa" else ""} \
      ~{if (gi_two_eggnog) then "--gi2eggnog" else ""} \
      ~{if (acc_two_eggnog) then "--acc2eggnog" else ""} \
      ~{if (syn_two_eggnog) then "--syn2eggnog" else ""} \
      ~{if (tags_four_eggnog) then "--tags4eggnog" else ""} \
      ~{if (gi_two_interpro_two_go) then "--gi2interpro2go" else ""} \
      ~{if (acc_two_interpro_two_go) then "--acc2interpro2go" else ""} \
      ~{if (syn_two_interpro_two_go) then "--syn2interpro2go" else ""} \
      ~{if (tags_four_interpro_two_go) then "--tags4interpro2go" else ""} \
      ~{if (gi_two_kegg) then "--gi2kegg" else ""} \
      ~{if (acc_two_kegg) then "--acc2kegg" else ""} \
      ~{if (syn_two_kegg) then "--syn2kegg" else ""} \
      ~{if (tags_four_kegg) then "--tags4kegg" else ""} \
      ~{if (gi_two_seed) then "--gi2seed" else ""} \
      ~{if (acc_two_seed) then "--acc2seed" else ""} \
      ~{if (syn_two_seed) then "--syn2seed" else ""} \
      ~{if (tags_four_seed) then "--tags4seed" else ""} \
      ~{if (first_word_is_accession) then "--firstWordIsAccession" else ""} \
      ~{if (accession_tags) then "--accessionTags" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "[string]                    Input references file (gzipped ok). Mandatory option."
    out: "[string]                   Output file. Mandatory option."
    parse_tax_on_names: "Parse taxon names. Default value: true."
    gi_two_tax_a: "[string]             GI-to-Taxonomy mapping file."
    acc_two_tax_a: "[string]            Accession-to-Taxonomy mapping file."
    syn_two_tax_a: "[string]            Synonyms-to-Taxonomy mapping file."
    gi_two_eggnog: "[string]      GI-to-EGGNOG mapping file."
    acc_two_eggnog: "[string]     Accession-to-EGGNOG mapping file."
    syn_two_eggnog: "[string]     Synonyms-to-EGGNOG mapping file."
    tags_four_eggnog: "[string]    Tags for EGGNOG id parsing (must set to activate id parsing)."
    gi_two_interpro_two_go: "[string]   GI-to-INTERPRO2GO mapping file."
    acc_two_interpro_two_go: "[string]   Accession-to-INTERPRO2GO mapping file."
    syn_two_interpro_two_go: "[string]   Synonyms-to-INTERPRO2GO mapping file."
    tags_four_interpro_two_go: "[string]   Tags for INTERPRO2GO id parsing (must set to activate id parsing)."
    gi_two_kegg: "[string]          GI-to-KEGG mapping file."
    acc_two_kegg: "[string]         Accession-to-KEGG mapping file."
    syn_two_kegg: "[string]         Synonyms-to-KEGG mapping file."
    tags_four_kegg: "[string]        Tags for KEGG id parsing (must set to activate id parsing)."
    gi_two_seed: "[string]          GI-to-SEED mapping file."
    acc_two_seed: "[string]         Accession-to-SEED mapping file."
    syn_two_seed: "[string]         Synonyms-to-SEED mapping file."
    tags_four_seed: "[string]        Tags for SEED id parsing (must set to activate id parsing)."
    first_word_is_accession: "First word in reference header is accession number. Default value: true."
    accession_tags: "[string(s)]   List of accession tags. Default value(s): gb| ref|."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}