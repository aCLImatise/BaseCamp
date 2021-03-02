class: CommandLineTool
id: tombo_build_model_estimate_reference.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_tombo_model_filename
  doc: Filename to save Tombo model.
  type: File?
  inputBinding:
    prefix: --tombo-model-filename
- id: in_estimate_mean
  doc: "Use the mean instead of median for model level\nestimation. Note: This can\
    \ cause poor fits due to\noutliers"
  type: boolean?
  inputBinding:
    prefix: --estimate-mean
- id: in_km_er_specific_sd
  doc: Estimate standard deviation for each k-mers
  type: boolean?
  inputBinding:
    prefix: --kmer-specific-sd
- id: in_downstream_bases
  doc: 'Downstream bases in k-mer. Default: 2'
  type: string?
  inputBinding:
    prefix: --downstream-bases
- id: in_minimum_test_reads
  doc: "Number of reads required at a position to perform\nsignificance testing or\
    \ contribute to model\nestimation. Default: 10"
  type: long?
  inputBinding:
    prefix: --minimum-test-reads
- id: in_coverage_threshold
  doc: "Maximum mean coverage per region when estimating k-mer\nmodel (limits compute\
    \ time for deep samples). Default:\n100"
  type: long?
  inputBinding:
    prefix: --coverage-threshold
- id: in_minimum_km_er_observations
  doc: "Number of each k-mer observations required in order to\nproduce a reference\
    \ (genomic locations for standard\nreference and per-read for alternative reference).\n\
    Default: 5"
  type: long?
  inputBinding:
    prefix: --minimum-kmer-observations
- id: in_multiprocess_region_size
  doc: "Size of regions over which to multiprocesses statistic\ncomputation. For very\
    \ deep samples a smaller value is\nrecommmended in order to control memory consumption.\n\
    Default: 10000"
  type: long?
  inputBinding:
    prefix: --multiprocess-region-size
- id: in_processes
  doc: 'Number of processes. Default: 1'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls\
    \ and created within\n[--corrected-group] containing re-squiggle results.\nDefault:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_individually_dot
  doc: --upstream-bases {0,1,2,3,4}
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
- tombo
- build_model
- estimate_reference
