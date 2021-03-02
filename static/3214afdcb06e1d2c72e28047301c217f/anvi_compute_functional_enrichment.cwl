class: CommandLineTool
id: anvi_compute_functional_enrichment.cwl
inputs:
- id: in_pan_db
  doc: "Anvi'o pan database (default: None)"
  type: string?
  inputBinding:
    prefix: --pan-db
- id: in_genomes_storage
  doc: "Anvi'o genomes storage file (default: None)"
  type: File?
  inputBinding:
    prefix: --genomes-storage
- id: in_category_variable
  doc: "The additional layers data variable name that divides\nlayers into multiple\
    \ categories. (default: None)"
  type: string?
  inputBinding:
    prefix: --category-variable
- id: in_annotation_source
  doc: "NAME\nGet functional annotations for a specific annotation\nsource. You can\
    \ use the flag '--list-annotation-\nsources' to learn about what sources are available.\n\
    (default: None)"
  type: string?
  inputBinding:
    prefix: --annotation-source
- id: in_list_annotation_sources
  doc: "List available functional annotation sources.\n(default: False)"
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
    \ as the functional annotation source.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --include-gc-identity-as-function
- id: in_modules_txt
  doc: "A tab-delimited text file specifying module\ncompleteness in every genome/MAG/sample\
    \ that you are\ninterested in. The best way to get this file is to run\n`anvi-estimate-metabolism\
    \ --kegg-output-modes modules`\non your samples of interest. Trust us. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --modules-txt
- id: in_groups_txt
  doc: "A 2-column tab-delimited text file specifying which\ngroup each sample belongs\
    \ to. The first column should\nhave the header 'sample' and contain sample names\n\
    matching to those in the modules-txt file. The second\ncolumn should have the\
    \ header 'group' and contain the\ngroup name/acronym for each sample (each sample\
    \ should\nbe in 1 group only) (default: None)"
  type: File?
  inputBinding:
    prefix: --groups-txt
- id: in_sample_header
  doc: "The header of the column containing your sample names\nin the modules-txt\
    \ input file. By default this is\n'db_name' because we are assuming you got your\
    \ modules\nmode output by running `anvi-estimate-metabolism` in\nmulti mode (on\
    \ multiple genomes or metagenomes), but\njust in case you got it a different way,\
    \ this is how\nyou can tell anvi'o which column to look at. The\nvalues in this\
    \ column should correspond to those in\nthe 'sample' column in the groups-txt\
    \ input file.\n(default: db_name)"
  type: File?
  inputBinding:
    prefix: --sample-header
- id: in_module_completion_threshold
  doc: "This threshold defines the percent completeness score\nat which we consider\
    \ a KEGG module to be 'present'in a\ngiven sample. That is, if a module's completeness\
    \ in a\nsample is less than this value, then we say the module\nis not present\
    \ in that sample, and this will affect\nthe module's enrichment score. By extension,\
    \ if a\nmodule's completeness is less than this value in all\nsamples, it will\
    \ have a very very low enrichment score\n(ie, it will not be considered enriched\
    \ at all,\nbecause it doesn't occur in any groups). Note that the\ncloser this\
    \ number is to 0, the more meaningless this\nwhole enrichment analysis is... but\
    \ hey, this is your\nshow. This threshold CAN be different from the\ncompleteness\
    \ threshold used in `anvi-estimate-\nmetabolism` if you wish. The default threshold\
    \ is\n0.75."
  type: long?
  inputBinding:
    prefix: --module-completion-threshold
- id: in_include_samples_missing_from_groups_txt
  doc: "Sometimes, you might have some sample names in your\nmodules-txt file that\
    \ you did not include in the\ngroups-txt file. This is fine. By default, we will\n\
    ignore those samples because they do not have a group.\nBut if you use this flag,\
    \ then instead those samples\nwill be included in a group called 'UNGROUPED'.\
    \ Be\ncautious when using this flag in combination with the\n--include-ungrouped\
    \ flag (which also sticks samples\nwithout groups into the 'UNGROUPED' group)\
    \ so that you\ndon't accidentally group together samples that are not\nsupposed\
    \ to be friends. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --include-samples-missing-from-groups-txt
- id: in_external_genomes
  doc: "A three-column TAB-delimited flat text file that lists\nanvi'o contigs databases.\
    \ The first item in the header\nline should read 'name', the second should read\n\
    'contigs_db_path', and the third should read 'group'.\nEach line in the file should\
    \ describe a single entry,\nwhere the first column is the name of the genome (or\n\
    MAG), the second column is the anvi'o contigs database\ngenerated for this genome,\
    \ and the third is the group\nthat this genome belongs to. (default: None)"
  type: File?
  inputBinding:
    prefix: --external-genomes
- id: in_internal_genomes
  doc: "A six-column TAB-delimited flat text file. The header\nline must contain these\
    \ columns: 'name', 'bin_id',\n'collection_id', 'profile_db_path', 'contigs_db_path',\n\
    'group'. Each line should list a single entry, where\n'name' can be any name to\
    \ describe the anvi'o bin\nidentified as 'bin_id' that is stored in a collection.\n\
    The 'group' column should indicate which group the bin\nbelongs to. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --internal-genomes
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_include_ungrouped
  doc: "Use this flag if you want anvi'o to include\ngenomes/samples with no group\
    \ in the analysis. (For\npangenomes, this means the genome has no value set for\n\
    the category variable which you specified using\n--category-variable. For modules,\
    \ this means the\nsample has no group specified in the groups-txt file.\nAnd for\
    \ regular 'ol genomes, this means the genome has\nnothing in the 'group' column\
    \ of the input file). By\ndefault all variables with no value will be ignored,\n\
    but if you apply this flag, they will instead be\nconsidered as a single group\
    \ (called 'UNGROUPED' when\nperforming the statistical analysis. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --include-ungrouped
- id: in_functional_occurrence_table_output
  doc: "Saves the occurrence frequency information for\nfunctions in genomes in a\
    \ TAB-delimited format. A file\nname must be provided. To learn more about how\
    \ the\nfunctional occurrence is computed, please refer to the\ntutorial. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --functional-occurrence-table-output
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_functional_enrichment_txt
  doc: '🍺 More on `anvi-compute-functional-enrichment`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_modules_txt
  doc: "A tab-delimited text file specifying module\ncompleteness in every genome/MAG/sample\
    \ that you are\ninterested in. The best way to get this file is to run\n`anvi-estimate-metabolism\
    \ --kegg-output-modes modules`\non your samples of interest. Trust us. (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_modules_txt)
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-compute-functional-enrichment
