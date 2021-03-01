version 1.0

task Maltbuild {
  input {
    Boolean? input_reference_files
    Boolean? sequence_type
    Boolean? input_gff
    Boolean? index
    Boolean? threads
    Boolean? step
    Boolean? shapes
    Boolean? max_hits_per_seed
    Boolean? protein_reduct
    Boolean? gi_two_eggnog
    Boolean? acc_two_eggnog
    Boolean? syn_two_eggnog
    Boolean? gi_two_interpro_two_go
    Boolean? acc_two_interpro_two_go
    Boolean? syn_two_interpro_two_go
    Boolean? gi_two_kegg
    Boolean? acc_two_kegg
    Boolean? syn_two_kegg
    Boolean? gi_two_seed
    Boolean? acc_two_seed
    Boolean? syn_two_seed
    Boolean? gi_two_taxonomy
    Boolean? acc_two_taxonomy
    Boolean? syn_two_taxonomy
    Boolean? parse_tax_on_names
    Boolean? no_fun
    Boolean? first_word_is_accession
    Boolean? accession_tags
    Boolean? first_word_only
    Boolean? random
    Boolean? hash_scale_factor
    Boolean? verbose
  }
  command <<<
    malt_build \
      ~{if (input_reference_files) then "--input" else ""} \
      ~{if (sequence_type) then "--sequenceType" else ""} \
      ~{if (input_gff) then "--inputGFF" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (shapes) then "--shapes" else ""} \
      ~{if (max_hits_per_seed) then "--maxHitsPerSeed" else ""} \
      ~{if (protein_reduct) then "--proteinReduct" else ""} \
      ~{if (gi_two_eggnog) then "--gi2eggnog" else ""} \
      ~{if (acc_two_eggnog) then "--acc2eggnog" else ""} \
      ~{if (syn_two_eggnog) then "--syn2eggnog" else ""} \
      ~{if (gi_two_interpro_two_go) then "--gi2interpro2go" else ""} \
      ~{if (acc_two_interpro_two_go) then "--acc2interpro2go" else ""} \
      ~{if (syn_two_interpro_two_go) then "--syn2interpro2go" else ""} \
      ~{if (gi_two_kegg) then "--gi2kegg" else ""} \
      ~{if (acc_two_kegg) then "--acc2kegg" else ""} \
      ~{if (syn_two_kegg) then "--syn2kegg" else ""} \
      ~{if (gi_two_seed) then "--gi2seed" else ""} \
      ~{if (acc_two_seed) then "--acc2seed" else ""} \
      ~{if (syn_two_seed) then "--syn2seed" else ""} \
      ~{if (gi_two_taxonomy) then "--gi2taxonomy" else ""} \
      ~{if (acc_two_taxonomy) then "--acc2taxonomy" else ""} \
      ~{if (syn_two_taxonomy) then "--syn2taxonomy" else ""} \
      ~{if (parse_tax_on_names) then "--parseTaxonNames" else ""} \
      ~{if (no_fun) then "--noFun" else ""} \
      ~{if (first_word_is_accession) then "--firstWordIsAccession" else ""} \
      ~{if (accession_tags) then "--accessionTags" else ""} \
      ~{if (first_word_only) then "--firstWordOnly" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (hash_scale_factor) then "--hashScaleFactor" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_reference_files: "[string(s)]              Input reference files in FastA format (or specify a single directory). Mandatory option."
    sequence_type: "[string]          Sequence type. Mandatory option. Legal values: DNA, Protein"
    input_gff: "[string(s)]        Files that provide CDS annotations of DNA input files in GFF format (or specify a single directory)."
    index: "[string]                 Name of index directory. Mandatory option."
    threads: "[number]               Number of worker threads. Default value: 8."
    step: "[number]                 Step size used to advance seed; a value greater than 1 will reduce index size, but also sensitivity. Default value: 1."
    shapes: "[string(s)]            Seed shape(s). Default value(s): default."
    max_hits_per_seed: "[number]       Maximum number of hits per seed. Default value: 1000."
    protein_reduct: "[string]        Name or definition of protein alphabet reduction (BLOSUM50_10,BLOSUM50_11,BLOSUM50_15,BLOSUM50_4,BLOSUM50_8,DIAMOND_11,GBMR4,HSDM17,MALT_10,SDM12,UNREDUCED). Default value: DIAMOND_11."
    gi_two_eggnog: "[string]      GI-to-EGGNOG mapping file (deprecated)."
    acc_two_eggnog: "[string]     Accession-to-EGGNOG mapping file."
    syn_two_eggnog: "[string]     Synonyms-to-EGGNOG mapping file."
    gi_two_interpro_two_go: "[string]   GI-to-INTERPRO2GO mapping file (deprecated)."
    acc_two_interpro_two_go: "[string]   Accession-to-INTERPRO2GO mapping file."
    syn_two_interpro_two_go: "[string]   Synonyms-to-INTERPRO2GO mapping file."
    gi_two_kegg: "[string]          GI-to-KEGG mapping file (deprecated)."
    acc_two_kegg: "[string]         Accession-to-KEGG mapping file."
    syn_two_kegg: "[string]         Synonyms-to-KEGG mapping file."
    gi_two_seed: "[string]          GI-to-SEED mapping file (deprecated)."
    acc_two_seed: "[string]         Accession-to-SEED mapping file."
    syn_two_seed: "[string]         Synonyms-to-SEED mapping file."
    gi_two_taxonomy: "[string]   GI-to-Taxonomy mapping file (deprecated)."
    acc_two_taxonomy: "[string]   Accession-to-Taxonomy mapping file."
    syn_two_taxonomy: "[string]   Synonyms-to-Taxonomy mapping file."
    parse_tax_on_names: "Parse taxon names. Default value: true."
    no_fun: "Turn off functional classifications for provided mapping files (set this when using GFF files for DNA references). Default value: false."
    first_word_is_accession: "First word in reference header is accession number. Default value: true."
    accession_tags: "[string(s)]   List of accession tags. Default value(s): gb| ref|."
    first_word_only: "Save only first word of reference header. Default value: false."
    random: "[number]              Random number generator seed. Default value: 666."
    hash_scale_factor: "[number]     Hash table scale factor. Default value: 0.9."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
  }
}