version 1.0

task AnviImportTaxonomyForLayers {
  input {
    String? profile_db
    String? parser
    File? s_input_files
    String? min_abundance
  }
  command <<<
    anvi-import-taxonomy-for-layers \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(parser) then ("--parser " +  '"' + parser + '"') else ""} \
      ~{if defined(s_input_files) then ("-i " +  '"' + s_input_files + '"') else ""} \
      ~{if defined(min_abundance) then ("--min-abundance " +  '"' + min_abundance + '"') else ""}
  >>>
  parameter_meta {
    profile_db: "Anvi'o profile database"
    parser: "Parser to make sense of the input files. There are 1 parsers readily available: ['krakenuniq']."
    s_input_files: "(S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...] Input file(s) for selected parser. Each parser (except \"blank\") requires input files to process that you generate before running anvio. Please see the documentation for details."
    min_abundance: "Short read-based taxonomy can be extremely noisy. Therefore, here we have defeault minimum percentage cutoff of 0.1% to eliminate any taxon that occurs less than that in a given input file."
  }
}