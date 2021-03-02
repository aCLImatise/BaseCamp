version 1.0

task Anvicomputefunctionalenrichment {
  input {
    String? pan_db
    File? genomes_storage
    String? category_variable
    String? annotation_source
    Boolean? list_annotation_sources
    Boolean? include_gc_identity_as_function
    File? modules_txt
    File? groups_txt
    File? sample_header
    Int? module_completion_threshold
    Boolean? include_samples_missing_from_groups_txt
    File? external_genomes
    File? internal_genomes
    File? output_file
    Boolean? include_ungrouped
    File? functional_occurrence_table_output
    Boolean? just_do_it
    String functional_enrichment_txt
  }
  command <<<
    anvi_compute_functional_enrichment \
      ~{functional_enrichment_txt} \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(category_variable) then ("--category-variable " +  '"' + category_variable + '"') else ""} \
      ~{if defined(annotation_source) then ("--annotation-source " +  '"' + annotation_source + '"') else ""} \
      ~{if (list_annotation_sources) then "--list-annotation-sources" else ""} \
      ~{if (include_gc_identity_as_function) then "--include-gc-identity-as-function" else ""} \
      ~{if defined(modules_txt) then ("--modules-txt " +  '"' + modules_txt + '"') else ""} \
      ~{if defined(groups_txt) then ("--groups-txt " +  '"' + groups_txt + '"') else ""} \
      ~{if defined(sample_header) then ("--sample-header " +  '"' + sample_header + '"') else ""} \
      ~{if defined(module_completion_threshold) then ("--module-completion-threshold " +  '"' + module_completion_threshold + '"') else ""} \
      ~{if (include_samples_missing_from_groups_txt) then "--include-samples-missing-from-groups-txt" else ""} \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (include_ungrouped) then "--include-ungrouped" else ""} \
      ~{if defined(functional_occurrence_table_output) then ("--functional-occurrence-table-output " +  '"' + functional_occurrence_table_output + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pan_db: "Anvi'o pan database (default: None)"
    genomes_storage: "Anvi'o genomes storage file (default: None)"
    category_variable: "The additional layers data variable name that divides\\nlayers into multiple categories. (default: None)"
    annotation_source: "NAME\\nGet functional annotations for a specific annotation\\nsource. You can use the flag '--list-annotation-\\nsources' to learn about what sources are available.\\n(default: None)"
    list_annotation_sources: "List available functional annotation sources.\\n(default: False)"
    include_gc_identity_as_function: "This is an option that asks anvi'o to treat gene\\ncluster names as functions. By doing so, you are in\\nfact creating an opportunity to study functional\\nenrichment statistics for each gene cluster\\nindependently. For instance, multiple gene clusters\\nmay have the same COG function. But if you wish to use\\nthe same enrichment analysis in your pangenome without\\ncollapsing multiple gene clusters into a single\\nfunction name, you can use this flag, and ask for\\n'IDENTITY' as the functional annotation source.\\n(default: False)"
    modules_txt: "A tab-delimited text file specifying module\\ncompleteness in every genome/MAG/sample that you are\\ninterested in. The best way to get this file is to run\\n`anvi-estimate-metabolism --kegg-output-modes modules`\\non your samples of interest. Trust us. (default: None)"
    groups_txt: "A 2-column tab-delimited text file specifying which\\ngroup each sample belongs to. The first column should\\nhave the header 'sample' and contain sample names\\nmatching to those in the modules-txt file. The second\\ncolumn should have the header 'group' and contain the\\ngroup name/acronym for each sample (each sample should\\nbe in 1 group only) (default: None)"
    sample_header: "The header of the column containing your sample names\\nin the modules-txt input file. By default this is\\n'db_name' because we are assuming you got your modules\\nmode output by running `anvi-estimate-metabolism` in\\nmulti mode (on multiple genomes or metagenomes), but\\njust in case you got it a different way, this is how\\nyou can tell anvi'o which column to look at. The\\nvalues in this column should correspond to those in\\nthe 'sample' column in the groups-txt input file.\\n(default: db_name)"
    module_completion_threshold: "This threshold defines the percent completeness score\\nat which we consider a KEGG module to be 'present'in a\\ngiven sample. That is, if a module's completeness in a\\nsample is less than this value, then we say the module\\nis not present in that sample, and this will affect\\nthe module's enrichment score. By extension, if a\\nmodule's completeness is less than this value in all\\nsamples, it will have a very very low enrichment score\\n(ie, it will not be considered enriched at all,\\nbecause it doesn't occur in any groups). Note that the\\ncloser this number is to 0, the more meaningless this\\nwhole enrichment analysis is... but hey, this is your\\nshow. This threshold CAN be different from the\\ncompleteness threshold used in `anvi-estimate-\\nmetabolism` if you wish. The default threshold is\\n0.75."
    include_samples_missing_from_groups_txt: "Sometimes, you might have some sample names in your\\nmodules-txt file that you did not include in the\\ngroups-txt file. This is fine. By default, we will\\nignore those samples because they do not have a group.\\nBut if you use this flag, then instead those samples\\nwill be included in a group called 'UNGROUPED'. Be\\ncautious when using this flag in combination with the\\n--include-ungrouped flag (which also sticks samples\\nwithout groups into the 'UNGROUPED' group) so that you\\ndon't accidentally group together samples that are not\\nsupposed to be friends. (default: False)"
    external_genomes: "A three-column TAB-delimited flat text file that lists\\nanvi'o contigs databases. The first item in the header\\nline should read 'name', the second should read\\n'contigs_db_path', and the third should read 'group'.\\nEach line in the file should describe a single entry,\\nwhere the first column is the name of the genome (or\\nMAG), the second column is the anvi'o contigs database\\ngenerated for this genome, and the third is the group\\nthat this genome belongs to. (default: None)"
    internal_genomes: "A six-column TAB-delimited flat text file. The header\\nline must contain these columns: 'name', 'bin_id',\\n'collection_id', 'profile_db_path', 'contigs_db_path',\\n'group'. Each line should list a single entry, where\\n'name' can be any name to describe the anvi'o bin\\nidentified as 'bin_id' that is stored in a collection.\\nThe 'group' column should indicate which group the bin\\nbelongs to. (default: None)"
    output_file: "File path to store results. (default: None)"
    include_ungrouped: "Use this flag if you want anvi'o to include\\ngenomes/samples with no group in the analysis. (For\\npangenomes, this means the genome has no value set for\\nthe category variable which you specified using\\n--category-variable. For modules, this means the\\nsample has no group specified in the groups-txt file.\\nAnd for regular 'ol genomes, this means the genome has\\nnothing in the 'group' column of the input file). By\\ndefault all variables with no value will be ignored,\\nbut if you apply this flag, they will instead be\\nconsidered as a single group (called 'UNGROUPED' when\\nperforming the statistical analysis. (default: False)"
    functional_occurrence_table_output: "Saves the occurrence frequency information for\\nfunctions in genomes in a TAB-delimited format. A file\\nname must be provided. To learn more about how the\\nfunctional occurrence is computed, please refer to the\\ntutorial. (default: None)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    functional_enrichment_txt: "🍺 More on `anvi-compute-functional-enrichment`:"
  }
  output {
    File out_stdout = stdout()
    File out_modules_txt = "${in_modules_txt}"
    File out_output_file = "${in_output_file}"
  }
}