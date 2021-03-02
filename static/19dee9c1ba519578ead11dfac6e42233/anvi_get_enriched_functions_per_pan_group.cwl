class: CommandLineTool
id: anvi_get_enriched_functions_per_pan_group.cwl
inputs:
- id: in_o
  doc: '[-F FILE]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_pan_db
  doc: Anvi'o pan database
  type: string?
  inputBinding:
    prefix: --pan-db
- id: in_genomes_storage
  doc: Anvi'o genomes storage file
  type: File?
  inputBinding:
    prefix: --genomes-storage
- id: in_category_variable
  doc: "The additional layers data variable name that divides\nlayers into multiple\
    \ categories."
  type: string?
  inputBinding:
    prefix: --category-variable
- id: in_annotation_source
  doc: "NAME\nGet functional annotations for a specific annotation\nsource. You can\
    \ use the flag '--list-annotation-\nsources' to learn about what sources are available."
  type: string?
  inputBinding:
    prefix: --annotation-source
- id: in_list_annotation_sources
  doc: List available functional annotation sources.
  type: boolean?
  inputBinding:
    prefix: --list-annotation-sources
- id: in_include_gc_identity_as_function
  doc: "This is an option that asks anvi'o to treat gene\ncluster names as functions.\
    \ By doing so, you are in\nfact creating an opportunity to study functional\n\
    enrichment statistics for each gene cluster\nindependently. For instance, multiple\
    \ gene clusters\nmay have the same COG function. But if you wish to use\nthe same\
    \ enrichment analysis in your pangenome without\ncollapsing multiple gene clusters\
    \ into a single\nfunction name, you can use this flag, and ask for\n'IDENTITY'\
    \ as the functional annotation source."
  type: boolean?
  inputBinding:
    prefix: --include-gc-identity-as-function
- id: in_output_file
  doc: File path to store results.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_functional_occurrence_table_output
  doc: "Saves the occurrence frequency information for\nfunctions in genomes in a\
    \ TAB-delimited format. A file\nname must be provided. To learn more about how\
    \ the\nfunctional occurrence is computed, please refer to the\ntutorial."
  type: File?
  inputBinding:
    prefix: --functional-occurrence-table-output
- id: in_exclude_ungrouped
  doc: "Use this flag if you want anvi'o to ignore genomes\nwith no value set for\
    \ the catergory variable (which\nyou specified using --category-variable). By\
    \ default\nall variables with no value will be considered as a\nsingle group when\
    \ preforming the statistical analysis."
  type: boolean?
  inputBinding:
    prefix: --exclude-ungrouped
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-get-enriched-functions-per-pan-group
