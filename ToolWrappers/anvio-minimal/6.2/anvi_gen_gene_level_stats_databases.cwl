class: CommandLineTool
id: anvi_gen_gene_level_stats_databases.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string?
  inputBinding:
    prefix: --contigs-db
- id: in_profile_db
  doc: Anvi'o profile database
  type: string?
  inputBinding:
    prefix: --profile-db
- id: in_collection_name
  doc: Collection name.
  type: string?
  inputBinding:
    prefix: --collection-name
- id: in_bin_id
  doc: Bin name you are interested in.
  type: string?
  inputBinding:
    prefix: --bin-id
- id: in_bin_ids_file
  doc: "Text file for bins (each line should be a unique bin\nid)."
  type: File?
  inputBinding:
    prefix: --bin-ids-file
- id: in_zeros_are_outliers
  doc: "If you want all zero coverage positions to be treated\nlike outliers then\
    \ use this flag. The reason to treat\nzero coverage as outliers is because when\
    \ mapping\nreads to a reference we could get many zero positions\ndue to accessory\
    \ genes. These positions then skew the\naverage values that we compute."
  type: boolean?
  inputBinding:
    prefix: --zeros-are-outliers
- id: in_outliers_threshold
  doc: "Threshold to use for the outlier detection. The\ndefault value is '1.5'. Absolute\
    \ deviation around the\nmedian is used. To read more about the method please\n\
    refer to: 'How to Detect and Handle Outliers' by Boris\nIglewicz and David Hoaglin\n\
    (doi:10.1016/j.jesp.2013.03.013)."
  type: long?
  inputBinding:
    prefix: --outliers-threshold
- id: in_just_do_it
  doc: Don't bother me with questions or warnings, just do
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_in_seq_stats
  doc: "Provide if working with INSeq/Tn-Seq genomic data.\nWith this, all gene level\
    \ coverage stats will be\ncalculated using INSeq/Tn-Seq statistical methods.\n"
  type: boolean?
  inputBinding:
    prefix: --inseq-stats
- id: in_it_dot
  doc: 'INSEQ DATA:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-gene-level-stats-databases
