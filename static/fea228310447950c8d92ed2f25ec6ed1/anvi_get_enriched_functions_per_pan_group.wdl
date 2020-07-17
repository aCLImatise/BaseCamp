version 1.0

task AnviGetEnrichedFunctionsPerPanGroup {
  input {
    String? pan_db
    String? genomes_storage
    Boolean? list_annotation_sources
    Boolean? include_gc_identity_as_function
    File? output_file
    File? functional_occurrence_table_output
    Boolean? exclude_ungrouped
    Boolean? just_do_it
  }
  command <<<
    anvi-get-enriched-functions-per-pan-group \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{true="--list-annotation-sources" false="" list_annotation_sources} \
      ~{true="--include-gc-identity-as-function" false="" include_gc_identity_as_function} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(functional_occurrence_table_output) then ("--functional-occurrence-table-output " +  '"' + functional_occurrence_table_output + '"') else ""} \
      ~{true="--exclude-ungrouped" false="" exclude_ungrouped} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    list_annotation_sources: "List available functional annotation sources."
    include_gc_identity_as_function: "This is an option that asks anvi'o to treat gene cluster names as functions. By doing so, you are in fact creating an opportunity to study functional enrichment statistics for each gene cluster independently. For instance, multiple gene clusters may have the same COG function. But if you wish to use the same enrichment analysis in your pangenome without collapsing multiple gene clusters into a single function name, you can use this flag, and ask for 'IDENTITY' as the functional annotation source."
    output_file: "File path to store results."
    functional_occurrence_table_output: "Saves the occurrence frequency information for functions in genomes in a TAB-delimited format. A file name must be provided. To learn more about how the functional occurrence is computed, please refer to the tutorial."
    exclude_ungrouped: "Use this flag if you want anvi'o to ignore genomes with no value set for the catergory variable (which you specified using --category-variable). By default all variables with no value will be considered as a single group when preforming the statistical analysis."
    just_do_it: "Don't bother me with questions or warnings, just do it."
  }
}