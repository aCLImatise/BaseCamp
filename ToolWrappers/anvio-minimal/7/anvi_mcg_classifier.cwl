class: CommandLineTool
id: anvi_mcg_classifier.cwl
inputs:
- id: in_profile_db
  doc: "Anvi'o profile database (default: None)"
  type: string?
  inputBinding:
    prefix: --profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs-database' (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --contigs-db
- id: in_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --output-file-prefix
- id: in_collection_name
  doc: 'Collection name. (default: None)'
  type: string?
  inputBinding:
    prefix: --collection-name
- id: in_bin_id
  doc: 'Bin name you are interested in. (default: None)'
  type: string?
  inputBinding:
    prefix: --bin-id
- id: in_bin_ids_file
  doc: "Text file for bins (each line should be a unique bin\nid). (default: None)"
  type: File?
  inputBinding:
    prefix: --bin-ids-file
- id: in_exclude_samples
  doc: "List of samples to exclude for the analysis. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --exclude-samples
- id: in_include_samples
  doc: "List of samples to include for the analysis. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --include-samples
- id: in_gen_figures
  doc: "For those of you who wish to dig deeper, a collection\nof figures could be\
    \ created to allow you to get\ninsight into how the classification was generated.\n\
    This is especially useful to identify cases in which\nyou shouldn't trust the\
    \ classification (for example\ndue to a large number of outliers). NOTICE: if\
    \ you ask\nanvi'o to generate these figures then it will\nsignificantly extend\
    \ the execution time. To learn\nabout which figures are created and what they\
    \ mean,\ncontact your nearest anvi'o developer, because\ncurrently it is a well-hidden\
    \ secret. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --gen-figures
- id: in_get_samples_stats_only
  doc: "If you only wish to get statistics regarding the\noccurrence of bins in samples,\
    \ then use this flag.\nEspecially when dealing with many samples or large\ngenomes,\
    \ gene stats could be a long time to compute.\nBy using this flag you could save\
    \ a lot of computation\ntime. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --get-samples-stats-only
- id: in_overwrite_output_destinations
  doc: "Overwrite if the output files and/or directories\nexist. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --overwrite-output-destinations
- id: in_genome_detection_uncertainty
  doc: "Determines the range of sample detection values that\nare considered negative,\
    \ ambiguous or positive. Min of\n0 and smaller than 0.5, default of 0.25. For\
    \ exmaple\nfor the default samples with detection below 0.5-0.25\n= 0.25 will\
    \ be considered negative (i.e. donot contain\nthe genome), samples with detection\
    \ between 0.25 and\n0.75 would be ambiguous (and hence would not be used\nfor\
    \ the classification), and samples with detection\nabove 0.75 would be considered\
    \ positive (i.e. contain\nthe genome). (default: 0.25)"
  type: long?
  inputBinding:
    prefix: --genome-detection-uncertainty
- id: in_outliers_threshold
  doc: "Threshold to use for the outlier detection. The\ndefault value is '1.5'. Absolute\
    \ deviation around the\nmedian is used. To read more about the method please\n\
    refer to: 'How to Detect and Handle Outliers' by Boris\nIglewicz and David Hoaglin\n\
    (doi:10.1016/j.jesp.2013.03.013)."
  type: long?
  inputBinding:
    prefix: --outliers-threshold
- id: in_zeros_are_outliers
  doc: "If you want all zero coverage positions to be treated\nlike outliers then\
    \ use this flag. The reason to treat\nzero coverage as outliers is because when\
    \ mapping\nreads to a reference we could get many zero positions\ndue to accessory\
    \ genes. These positions then skew the\naverage values that we compute. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --zeros-are-outliers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-mcg-classifier
