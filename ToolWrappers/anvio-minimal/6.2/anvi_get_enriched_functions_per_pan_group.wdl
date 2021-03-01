version 1.0

task Anvigetenrichedfunctionsperpangroup {
  input {
    File? o
    String? pan_db
    File? genomes_storage
    String? category_variable
    String? annotation_source
    Boolean? list_annotation_sources
    Boolean? include_gc_identity_as_function
    File? output_file
    File? functional_occurrence_table_output
    Boolean? exclude_ungrouped
    Boolean? just_do_it
  }
  command <<<
    anvi_get_enriched_functions_per_pan_group \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(category_variable) then ("--category-variable " +  '"' + category_variable + '"') else ""} \
      ~{if defined(annotation_source) then ("--annotation-source " +  '"' + annotation_source + '"') else ""} \
      ~{if (list_annotation_sources) then "--list-annotation-sources" else ""} \
      ~{if (include_gc_identity_as_function) then "--include-gc-identity-as-function" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(functional_occurrence_table_output) then ("--functional-occurrence-table-output " +  '"' + functional_occurrence_table_output + '"') else ""} \
      ~{if (exclude_ungrouped) then "--exclude-ungrouped" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: "[-F FILE]"
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    category_variable: "The additional layers data variable name that divides\\nlayers into multiple categories."
    annotation_source: "NAME\\nGet functional annotations for a specific annotation\\nsource. You can use the flag '--list-annotation-\\nsources' to learn about what sources are available."
    list_annotation_sources: "List available functional annotation sources."
    include_gc_identity_as_function: "This is an option that asks anvi'o to treat gene\\ncluster names as functions. By doing so, you are in\\nfact creating an opportunity to study functional\\nenrichment statistics for each gene cluster\\nindependently. For instance, multiple gene clusters\\nmay have the same COG function. But if you wish to use\\nthe same enrichment analysis in your pangenome without\\ncollapsing multiple gene clusters into a single\\nfunction name, you can use this flag, and ask for\\n'IDENTITY' as the functional annotation source."
    output_file: "File path to store results."
    functional_occurrence_table_output: "Saves the occurrence frequency information for\\nfunctions in genomes in a TAB-delimited format. A file\\nname must be provided. To learn more about how the\\nfunctional occurrence is computed, please refer to the\\ntutorial."
    exclude_ungrouped: "Use this flag if you want anvi'o to ignore genomes\\nwith no value set for the catergory variable (which\\nyou specified using --category-variable). By default\\nall variables with no value will be considered as a\\nsingle group when preforming the statistical analysis."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}