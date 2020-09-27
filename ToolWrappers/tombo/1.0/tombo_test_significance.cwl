class: CommandLineTool
id: tombo_test_significance.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_file_base_name
  doc: "File base name to save base by base statistics from\ntesting. Filenames will\
    \ be [--statistics-file-basename\n].[--alternate-bases]?.tombo.stats"
  type: File
  inputBinding:
    prefix: --statistics-file-basename
- id: in_control_fast_five_based_irs
  doc: "Control set of directories containing fast5 files.\nThese reads should contain\
    \ only standard nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_tombo_model_filename
  doc: "Tombo model for event-less resquiggle and significance\ntesting. If no model\
    \ is provided the default DNA or\nRNA tombo model will be used."
  type: File
  inputBinding:
    prefix: --tombo-model-filename
- id: in_alternate_model_filenames
  doc: "Tombo models for alternative likelihood ratio\nsignificance testing."
  type: string[]
  inputBinding:
    prefix: --alternate-model-filenames
- id: in_alternate_bases
  doc: "[{5mC} ...]\nDefault non-standard base model for testing."
  type: string
  inputBinding:
    prefix: --alternate-bases
- id: in_fishers_method_context
  doc: "Number of context bases up and downstream over which\nto compute Fisher's\
    \ method combined p-values. Note:\nNot applicable for alternative model likelihood\
    \ ratio\ntests. Default: 1."
  type: long
  inputBinding:
    prefix: --fishers-method-context
- id: in_minimum_test_reads
  doc: "Number of reads required at a position to perform\nsignificance testing or\
    \ contribute to model\nestimation. Default: 5"
  type: long
  inputBinding:
    prefix: --minimum-test-reads
- id: in_single_read_threshold
  doc: "P-value or log likelihood ratio threshold when\ncomputing fraction of significant\
    \ reads at each\ngenomic position. Default: pvalue:0.01; likelihood\nratio:2"
  type: double
  inputBinding:
    prefix: --single-read-threshold
- id: in_multiprocess_region_size
  doc: "Size of regions over which to multiprocesses statistic\ncomputation. For very\
    \ deep samples a smaller value is\nrecommmended in order to control memory consumption.\n\
    Default: 10000"
  type: long
  inputBinding:
    prefix: --multiprocess-region-size
- id: in_processes
  doc: 'Number of processes. Default: 1'
  type: long
  inputBinding:
    prefix: --processes
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls.\
    \ Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_14
  doc: '[--control-fast5-basedirs CONTROL_FAST5_BASEDIRS [CONTROL_FAST5_BASEDIRS ...]]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- test_significance
