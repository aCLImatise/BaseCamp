version 1.0

task Daa2rma {
  input {
    Boolean? metadata_file
    Boolean? use_compression
    Boolean? paired_suffix_length
    Boolean? paired_reads_in_one_file
    Boolean? max_matches_per_read
    Boolean? classify
    Boolean? min_score
    Boolean? max_expected
    Boolean? min_percent_identity
    Boolean? top_percent
    Boolean? min_support_percent
    Boolean? min_support
    Boolean? min_percent_read_cover
    Boolean? min_percent_reference_cover
    Boolean? lca_algorithm
    Boolean? lca_coverage_percent
    Boolean? read_assignment_mode
    Boolean? con_file
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
    String i__input
    String _output_files
    String reads
    String parameters
  }
  command <<<
    daa2rma \
      ~{i__input} \
      ~{_output_files} \
      ~{reads} \
      ~{parameters} \
      ~{if (metadata_file) then "--metaDataFile" else ""} \
      ~{if (use_compression) then "--useCompression" else ""} \
      ~{if (paired_suffix_length) then "--pairedSuffixLength" else ""} \
      ~{if (paired_reads_in_one_file) then "--pairedReadsInOneFile" else ""} \
      ~{if (max_matches_per_read) then "--maxMatchesPerRead" else ""} \
      ~{if (classify) then "--classify" else ""} \
      ~{if (min_score) then "--minScore" else ""} \
      ~{if (max_expected) then "--maxExpected" else ""} \
      ~{if (min_percent_identity) then "--minPercentIdentity" else ""} \
      ~{if (top_percent) then "--topPercent" else ""} \
      ~{if (min_support_percent) then "--minSupportPercent" else ""} \
      ~{if (min_support) then "--minSupport" else ""} \
      ~{if (min_percent_read_cover) then "--minPercentReadCover" else ""} \
      ~{if (min_percent_reference_cover) then "--minPercentReferenceCover" else ""} \
      ~{if (lca_algorithm) then "--lcaAlgorithm" else ""} \
      ~{if (lca_coverage_percent) then "--lcaCoveragePercent" else ""} \
      ~{if (read_assignment_mode) then "--readAssignmentMode" else ""} \
      ~{if (con_file) then "--conFile" else ""} \
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
  parameter_meta {
    metadata_file: "[string(s)]     Files containing metadata to be included in RMA6 files."
    use_compression: "Compress reads and matches in RMA file (smaller files, longer to generate. Default value: true."
    paired_suffix_length: "[number]   Length of name suffix used to distinguish between name (i.e. first word in header) of read and its mate (use 0 if read and mate have same name). Default value: 0."
    paired_reads_in_one_file: "Are paired reads in one file (usually they are in two). Default value: false."
    max_matches_per_read: "[number]     Max matches per read. Default value: 100."
    classify: "Run classification algorithm. Default value: true."
    min_score: "[number]             Min score. Default value: 50.0."
    max_expected: "[number]          Max expected. Default value: 0.01."
    min_percent_identity: "[number]   Min percent identity. Default value: 0.0."
    top_percent: "[number]          Top percent. Default value: 10.0."
    min_support_percent: "[number]   Min support as percent of assigned reads (0==off). Default value: 0.05."
    min_support: "[number]          Min support (0==off). Default value: 0."
    min_percent_read_cover: "[number]   Min percent of read length to be covered by alignments. Default value: 0.0."
    min_percent_reference_cover: "[number]   Min percent of reference length to be covered by alignments. Default value: 0.0."
    lca_algorithm: "[string]        Set the LCA algorithm to use for taxonomic assignment. Default value: naive. Legal values: naive, weighted, longReads"
    lca_coverage_percent: "[number]   Set the percent for the LCA to cover. Default value: 100.0."
    read_assignment_mode: "[string]   Set the read assignment mode. Default value: readCount. Legal values: readCount, readLength, alignedBases, readMagnitude"
    con_file: "[string]              File of contaminant taxa (one Id or name per line)."
    parse_tax_on_names: "Parse taxon names. Default value: true."
    gi_two_tax_a: "[string]             GI-to-Taxonomy mapping file."
    acc_two_tax_a: "[string]            Accessopm-to-Taxonomy mapping file."
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
    first_word_is_accession: "First word in reference header is accession number (set to 'true' for NCBI-nr downloaded Sep 2016 or later). Default value: true."
    accession_tags: "[string(s)]   List of accession tags. Default value(s): gb| ref|."
    verbose: "Echo commandline options and be verbose. Default value: false."
    i__input: "-i, --in [string(s)]                 Input DAA file. Mandatory option."
    _output_files: "-o, --out [string(s)]                Output file(s), one for each input file, or a directory. Mandatory option."
    reads: "-p, --paired                         Reads are paired. Default value: false."
    parameters: "-lg, --longReads                     Parse and analyse as long reads. Default value: false."
  }
  output {
    File out_stdout = stdout()
  }
}