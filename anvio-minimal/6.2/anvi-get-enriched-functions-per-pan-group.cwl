#!/usr/bin/env cwl-runner

baseCommand:
- anvi-get-enriched-functions-per-pan-group
class: CommandLineTool
cwlVersion: v1.0
id: anvi-get-enriched-functions-per-pan-group
inputs:
- doc: Anvi'o pan database
  id: pan_db
  inputBinding:
    prefix: --pan-db
  type: string
- doc: Anvi'o genomes storage file
  id: genomes_storage
  inputBinding:
    prefix: --genomes-storage
  type: string
- doc: List available functional annotation sources.
  id: list_annotation_sources
  inputBinding:
    prefix: --list-annotation-sources
  type: boolean
- doc: This is an option that asks anvi'o to treat gene cluster names as functions.
    By doing so, you are in fact creating an opportunity to study functional enrichment
    statistics for each gene cluster independently. For instance, multiple gene clusters
    may have the same COG function. But if you wish to use the same enrichment analysis
    in your pangenome without collapsing multiple gene clusters into a single function
    name, you can use this flag, and ask for 'IDENTITY' as the functional annotation
    source.
  id: include_gc_identity_as_function
  inputBinding:
    prefix: --include-gc-identity-as-function
  type: boolean
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Saves the occurrence frequency information for functions in genomes in a TAB-delimited
    format. A file name must be provided. To learn more about how the functional occurrence
    is computed, please refer to the tutorial.
  id: functional_occurrence_table_output
  inputBinding:
    prefix: --functional-occurrence-table-output
  type: File
- doc: Use this flag if you want anvi'o to ignore genomes with no value set for the
    catergory variable (which you specified using --category-variable). By default
    all variables with no value will be considered as a single group when preforming
    the statistical analysis.
  id: exclude_ungrouped
  inputBinding:
    prefix: --exclude-ungrouped
  type: boolean
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
