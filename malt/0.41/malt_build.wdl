version 1.0

task MaltBuild {
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
    malt-build \
      ~{true="--input" false="" input_reference_files} \
      ~{true="--sequenceType" false="" sequence_type} \
      ~{true="--inputGFF" false="" input_gff} \
      ~{true="--index" false="" index} \
      ~{true="--threads" false="" threads} \
      ~{true="--step" false="" step} \
      ~{true="--shapes" false="" shapes} \
      ~{true="--maxHitsPerSeed" false="" max_hits_per_seed} \
      ~{true="--proteinReduct" false="" protein_reduct} \
      ~{true="--gi2eggnog" false="" gi_two_eggnog} \
      ~{true="--acc2eggnog" false="" acc_two_eggnog} \
      ~{true="--syn2eggnog" false="" syn_two_eggnog} \
      ~{true="--gi2interpro2go" false="" gi_two_interpro_two_go} \
      ~{true="--acc2interpro2go" false="" acc_two_interpro_two_go} \
      ~{true="--syn2interpro2go" false="" syn_two_interpro_two_go} \
      ~{true="--gi2kegg" false="" gi_two_kegg} \
      ~{true="--acc2kegg" false="" acc_two_kegg} \
      ~{true="--syn2kegg" false="" syn_two_kegg} \
      ~{true="--gi2seed" false="" gi_two_seed} \
      ~{true="--acc2seed" false="" acc_two_seed} \
      ~{true="--syn2seed" false="" syn_two_seed} \
      ~{true="--gi2taxonomy" false="" gi_two_taxonomy} \
      ~{true="--acc2taxonomy" false="" acc_two_taxonomy} \
      ~{true="--syn2taxonomy" false="" syn_two_taxonomy} \
      ~{true="--parseTaxonNames" false="" parse_tax_on_names} \
      ~{true="--noFun" false="" no_fun} \
      ~{true="--firstWordIsAccession" false="" first_word_is_accession} \
      ~{true="--accessionTags" false="" accession_tags} \
      ~{true="--firstWordOnly" false="" first_word_only} \
      ~{true="--random" false="" random} \
      ~{true="--hashScaleFactor" false="" hash_scale_factor} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    input_reference_files: "[string(s)]              Input reference files in FastA format (or specify a single directory). Mandatory option."
    sequence_type: "[string]          Sequence type. Mandatory option. Legal values: DNA, Protein"
    input_gff: "[string(s)]        Files that provide CDS annotations of DNA input files in GFF format (or specify a single directory). "
    index: "[string]                 Name of index directory. Mandatory option."
    threads: "[number]               Number of worker threads. Default value: 8."
    step: "[number]                 Step size used to advance seed; a value greater than 1 will reduce index size, but also sensitivity. Default value: 1."
    shapes: "[string(s)]            Seed shape(s). Default value(s): default."
    max_hits_per_seed: "[number]       Maximum number of hits per seed. Default value: 1000."
    protein_reduct: "[string]        Name or definition of protein alphabet reduction (BLOSUM50_10,BLOSUM50_11,BLOSUM50_15,BLOSUM50_4,BLOSUM50_8,DIAMOND_11,GBMR4,HSDM17,MALT_10,SDM12,UNREDUCED). Default value: DIAMOND_11."
    gi_two_eggnog: "[string]      GI-to-EGGNOG mapping file (deprecated). "
    acc_two_eggnog: "[string]     Accession-to-EGGNOG mapping file. "
    syn_two_eggnog: "[string]     Synonyms-to-EGGNOG mapping file. "
    gi_two_interpro_two_go: "[string]   GI-to-INTERPRO2GO mapping file (deprecated). "
    acc_two_interpro_two_go: "[string]   Accession-to-INTERPRO2GO mapping file. "
    syn_two_interpro_two_go: "[string]   Synonyms-to-INTERPRO2GO mapping file. "
    gi_two_kegg: "[string]          GI-to-KEGG mapping file (deprecated). "
    acc_two_kegg: "[string]         Accession-to-KEGG mapping file. "
    syn_two_kegg: "[string]         Synonyms-to-KEGG mapping file. "
    gi_two_seed: "[string]          GI-to-SEED mapping file (deprecated). "
    acc_two_seed: "[string]         Accession-to-SEED mapping file. "
    syn_two_seed: "[string]         Synonyms-to-SEED mapping file. "
    gi_two_taxonomy: "[string]   GI-to-Taxonomy mapping file (deprecated). "
    acc_two_taxonomy: "[string]   Accession-to-Taxonomy mapping file. "
    syn_two_taxonomy: "[string]   Synonyms-to-Taxonomy mapping file. "
    parse_tax_on_names: "Parse taxon names. Default value: true."
    no_fun: "Turn off functional classifications for provided mapping files (set this when using GFF files for DNA references). Default value: false."
    first_word_is_accession: "First word in reference header is accession number. Default value: true."
    accession_tags: "[string(s)]   List of accession tags. Default value(s): gb| ref|."
    first_word_only: "Save only first word of reference header. Default value: false."
    random: "[number]              Random number generator seed. Default value: 666."
    hash_scale_factor: "[number]     Hash table scale factor. Default value: 0.9."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
}