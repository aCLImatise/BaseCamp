class: CommandLineTool
id: anvi_get_enriched_functions_per_pan_group.cwl
inputs:
- id: pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: list_annotation_sources
  doc: List available functional annotation sources.
  type: boolean
  inputBinding:
    prefix: --list-annotation-sources
- id: include_gc_identity_as_function
  doc: This is an option that asks anvi'o to treat gene cluster names as functions.
    By doing so, you are in fact creating an opportunity to study functional enrichment
    statistics for each gene cluster independently. For instance, multiple gene clusters
    may have the same COG function. But if you wish to use the same enrichment analysis
    in your pangenome without collapsing multiple gene clusters into a single function
    name, you can use this flag, and ask for 'IDENTITY' as the functional annotation
    source.
  type: boolean
  inputBinding:
    prefix: --include-gc-identity-as-function
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: functional_occurrence_table_output
  doc: Saves the occurrence frequency information for functions in genomes in a TAB-delimited
    format. A file name must be provided. To learn more about how the functional occurrence
    is computed, please refer to the tutorial.
  type: File
  inputBinding:
    prefix: --functional-occurrence-table-output
- id: exclude_ungrouped
  doc: Use this flag if you want anvi'o to ignore genomes with no value set for the
    catergory variable (which you specified using --category-variable). By default
    all variables with no value will be considered as a single group when preforming
    the statistical analysis.
  type: boolean
  inputBinding:
    prefix: --exclude-ungrouped
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-get-enriched-functions-per-pan-group
