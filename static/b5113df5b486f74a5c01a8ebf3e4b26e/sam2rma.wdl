version 1.0

task Sam2rma {
  input {
    Boolean? reads_files_fasta
    Boolean? metadata_file
    Boolean? use_compression
    Boolean? paired_suffix_length
    Boolean? max_matches_per_read
    Boolean? classify
    Boolean? min_score
    Boolean? max_expected
    Boolean? top_percent
    Boolean? min_support_percent
    Boolean? min_support
    Boolean? min_percent_read_cover
    Boolean? min_percent_reference_cover
    Boolean? min_read_length
    Boolean? lca_algorithm
    Boolean? lca_coverage_percent
    Boolean? read_assignment_mode
    Boolean? con_file
    Boolean? map_db
    Boolean? only
    Boolean? parse_tax_on_names
    Boolean? acc_two_tax_a
    Boolean? syn_two_tax_a
    Boolean? tags_four_taxonomy
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
    Boolean? threads
    Boolean? temp_store_in_memory
    Boolean? temp_store_dir
    Boolean? verbose
    String i__generated
    String o__output
    String _paired_paired
    String parameters
  }
  command <<<
    sam2rma \
      ~{i__generated} \
      ~{o__output} \
      ~{_paired_paired} \
      ~{parameters} \
      ~{if (reads_files_fasta) then "--reads" else ""} \
      ~{if (metadata_file) then "--metaDataFile" else ""} \
      ~{if (use_compression) then "--useCompression" else ""} \
      ~{if (paired_suffix_length) then "--pairedSuffixLength" else ""} \
      ~{if (max_matches_per_read) then "--maxMatchesPerRead" else ""} \
      ~{if (classify) then "--classify" else ""} \
      ~{if (min_score) then "--minScore" else ""} \
      ~{if (max_expected) then "--maxExpected" else ""} \
      ~{if (top_percent) then "--topPercent" else ""} \
      ~{if (min_support_percent) then "--minSupportPercent" else ""} \
      ~{if (min_support) then "--minSupport" else ""} \
      ~{if (min_percent_read_cover) then "--minPercentReadCover" else ""} \
      ~{if (min_percent_reference_cover) then "--minPercentReferenceCover" else ""} \
      ~{if (min_read_length) then "--minReadLength" else ""} \
      ~{if (lca_algorithm) then "--lcaAlgorithm" else ""} \
      ~{if (lca_coverage_percent) then "--lcaCoveragePercent" else ""} \
      ~{if (read_assignment_mode) then "--readAssignmentMode" else ""} \
      ~{if (con_file) then "--conFile" else ""} \
      ~{if (map_db) then "--mapDB" else ""} \
      ~{if (only) then "--only" else ""} \
      ~{if (parse_tax_on_names) then "--parseTaxonNames" else ""} \
      ~{if (acc_two_tax_a) then "--acc2taxa" else ""} \
      ~{if (syn_two_tax_a) then "--syn2taxa" else ""} \
      ~{if (tags_four_taxonomy) then "--tags4taxonomy" else ""} \
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
      ~{if (threads) then "--threads" else ""} \
      ~{if (temp_store_in_memory) then "--tempStoreInMemory" else ""} \
      ~{if (temp_store_dir) then "--tempStoreDir" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  parameter_meta {
    reads_files_fasta: "[string(s)]              Reads file(s) (fasta or fastq, gzipped ok)."
    metadata_file: "[string(s)]     Files containing metadata to be included in RMA6 files."
    use_compression: "Compress reads and matches in RMA file (smaller files, longer to generate. Default value: true."
    paired_suffix_length: "[number]   Length of name suffix used to distinguish between name of read and its mate. Default value: 0."
    max_matches_per_read: "[number]     Max matches per read. Default value: 100."
    classify: "Run classification algorithm. Default value: true."
    min_score: "[number]             Min score. Default value: 50.0."
    max_expected: "[number]          Max expected. Default value: 0.01."
    top_percent: "[number]          Top percent. Default value: 10.0."
    min_support_percent: "[number]   Min support as percent of assigned reads (0==off). Default value: 0.05."
    min_support: "[number]          Min support. Default value: 0."
    min_percent_read_cover: "[number]   Min percent of read length to be covered by alignments. Default value: 0.0."
    min_percent_reference_cover: "[number]   Min percent of reference length to be covered by alignments. Default value: 0.0."
    min_read_length: "[number]       Minimum read length. Default value: 0."
    lca_algorithm: "[string]        Set the LCA algorithm to use for taxonomic assignment. Default value: naive Legal values: naive, weighted, longReads"
    lca_coverage_percent: "[number]   Set the percent for the LCA to cover. Default value: 100.0."
    read_assignment_mode: "[string]   Set the read assignment mode. Default value: alignedBases in long read mode, readCount else"
    con_file: "[string]              File of contaminant taxa (one Id or name per line)."
    map_db: "[string]               MEGAN mapping db (file megan-map.db)."
    only: "[string(s)]              Use only named classifications (if not set: use all)."
    parse_tax_on_names: "Parse taxon names. Default value: true."
    acc_two_tax_a: "[string]            Accession-to-Taxonomy mapping file."
    syn_two_tax_a: "[string]            Synonyms-to-Taxonomy mapping file."
    tags_four_taxonomy: "[string]       Tags for taxonomy id parsing (must set to activate id parsing)."
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
    first_word_is_accession: "First word in reference header is accession number (set to 'true' for NCBI-nr downloaded Sep 2016 or later). Default value: true."
    accession_tags: "[string(s)]   List of accession tags. Default value(s): 'gb|' 'ref|'."
    threads: "[number]               Number of threads. Default value: 8."
    temp_store_in_memory: "Temporary storage in memory for SQLITE. Default value: false."
    temp_store_dir: "[string]        Temporary storage directory for SQLITE (if not in-memory)."
    verbose: "Echo commandline options and be verbose. Default value: false."
    i__generated: "-i, --in [string(s)]                 Input SAM file[s] generated by DIAMOND or MALT (gzipped ok). Mandatory option."
    o__output: "-o, --out [string(s)]                Output file(s), one for each input file, or a directory. Mandatory option."
    _paired_paired: "-p, --paired                         Reads are paired. Default value: false."
    parameters: "-lg, --longReads                     Parse and analyse as long reads. Default value: false."
  }
  output {
    File out_stdout = stdout()
  }
}