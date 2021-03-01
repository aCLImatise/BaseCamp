version 1.0

task Blast2lca {
  input {
    Boolean? format
    Boolean? mode
    File? kegg_output
    Boolean? kegg
    Boolean? show_ranks
    Boolean? official_ranks_only
    Boolean? show_tax_ids
    Boolean? max_expected
    Boolean? top_percent
    Boolean? min_percent_identity
    Boolean? max_kegg_per_read
    Boolean? parse_tax_on_names
    Boolean? gi_two_tax_a
    Boolean? acc_two_tax_a
    Boolean? syn_two_tax_a
    Boolean? gi_two_kegg
    Boolean? acc_two_kegg
    Boolean? syn_two_kegg
    Boolean? first_word_is_accession
    Boolean? accession_tags
    Boolean? verbose
    String i__input
    String o__output
    String parameters
    String true_dot
  }
  command <<<
    blast2lca \
      ~{i__input} \
      ~{o__output} \
      ~{parameters} \
      ~{true_dot} \
      ~{if (format) then "--format" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (kegg_output) then "--keggOutput" else ""} \
      ~{if (kegg) then "--kegg" else ""} \
      ~{if (show_ranks) then "--showRanks" else ""} \
      ~{if (official_ranks_only) then "--officialRanksOnly" else ""} \
      ~{if (show_tax_ids) then "--showTaxIds" else ""} \
      ~{if (max_expected) then "--maxExpected" else ""} \
      ~{if (top_percent) then "--topPercent" else ""} \
      ~{if (min_percent_identity) then "--minPercentIdentity" else ""} \
      ~{if (max_kegg_per_read) then "--maxKeggPerRead" else ""} \
      ~{if (parse_tax_on_names) then "--parseTaxonNames" else ""} \
      ~{if (gi_two_tax_a) then "--gi2taxa" else ""} \
      ~{if (acc_two_tax_a) then "--acc2taxa" else ""} \
      ~{if (syn_two_tax_a) then "--syn2taxa" else ""} \
      ~{if (gi_two_kegg) then "--gi2kegg" else ""} \
      ~{if (acc_two_kegg) then "--acc2kegg" else ""} \
      ~{if (syn_two_kegg) then "--syn2kegg" else ""} \
      ~{if (first_word_is_accession) then "--firstWordIsAccession" else ""} \
      ~{if (accession_tags) then "--accessionTags" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "[string]                BLAST format. Default value: Unknown. Legal values: Unknown, DAA, BlastText, BlastXML, BlastTab, LastMAF, RapSearch2Aln, IlluminaReporter, RDPAssignmentDetails, RDPStandalone, Mothur, SAM, References_as_FastA"
    mode: "[string]                  BLAST mode. Default value: Unknown. Legal values: Unknown, BlastN, BlastP, BlastX, Classifier"
    kegg_output: "[string]           KEGG output file. Default value: foo-kegg.txt."
    kegg: "Map reads to KEGG KOs?. Default value: false."
    show_ranks: "Show taxonomic ranks. Default value: true."
    official_ranks_only: "Report only taxa that have an official rank. Default value: true."
    show_tax_ids: "Report taxon ids rather than taxon names. Default value: false."
    max_expected: "[number]          Max expected. Default value: 0.01."
    top_percent: "[number]          Top percent. Default value: 10.0."
    min_percent_identity: "[number]   Min percent identity. Default value: 0.0."
    max_kegg_per_read: "[number]       Maximum number of KEGG assignments to report for a read. Default value: 4."
    parse_tax_on_names: "Parse taxon names. Default value: true."
    gi_two_tax_a: "[string]             GI-to-Taxonomy mapping file."
    acc_two_tax_a: "[string]            Accession-to-Taxonomy mapping file."
    syn_two_tax_a: "[string]            Synonyms-to-Taxonomy mapping file."
    gi_two_kegg: "[string]          GI-to-KEGG mapping file."
    acc_two_kegg: "[string]         Accession-to-KEGG mapping file."
    syn_two_kegg: "[string]         Synonyms-to-KEGG mapping file."
    first_word_is_accession: "First word in reference header is accession number (set to 'true' for NCBI-nr downloaded Sep 2016 or later). Default value: true."
    accession_tags: "[string(s)]   List of accession tags. Default value(s): gb| ref|."
    verbose: "Echo commandline options and be verbose. Default value: false."
    i__input: "-i, --input [string]                 Input BLAST file. Mandatory option."
    o__output: "-o, --output [string]                Taxonomy output file. Default value: foo-taxonomy.txt."
    parameters: "-ms, --minScore [number]             Min score. Default value: 50.0."
    true_dot: "Classification support:"
  }
  output {
    File out_stdout = stdout()
    File out_kegg_output = "${in_kegg_output}"
  }
}