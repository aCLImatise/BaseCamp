class: CommandLineTool
id: ../../../tombo_build_model_estimate_reference.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: tombo_model_filename
  doc: Filename to save Tombo model.
  type: string
  inputBinding:
    prefix: --tombo-model-filename
- id: estimate_mean
  doc: 'Use the mean instead of median for model level estimation. Note: This can
    cause poor fits due to outliers'
  type: boolean
  inputBinding:
    prefix: --estimate-mean
- id: km_er_specific_sd
  doc: Estimate standard deviation for each k-mers individually.
  type: boolean
  inputBinding:
    prefix: --kmer-specific-sd
- id: upstream_bases
  doc: 'Upstream bases in k-mer. Default: 1'
  type: string
  inputBinding:
    prefix: --upstream-bases
- id: downstream_bases
  doc: 'Downstream bases in k-mer. Default: 2'
  type: string
  inputBinding:
    prefix: --downstream-bases
- id: minimum_test_reads
  doc: 'Number of reads required at a position to perform significance testing or
    contribute to model estimation. Default: 10'
  type: long
  inputBinding:
    prefix: --minimum-test-reads
- id: coverage_threshold
  doc: 'Maximum mean coverage per region when estimating k-mer model (limits compute
    time for deep samples). Default: 100'
  type: string
  inputBinding:
    prefix: --coverage-threshold
- id: minimum_km_er_observations
  doc: 'Number of each k-mer observations required in order to produce a reference
    (genomic locations for standard reference and per-read for alternative reference).
    Default: 5'
  type: long
  inputBinding:
    prefix: --minimum-kmer-observations
- id: multiprocess_region_size
  doc: 'Size of regions over which to multiprocesses statistic computation. For very
    deep samples a smaller value is recommmended in order to control memory consumption.
    Default: 10000'
  type: string
  inputBinding:
    prefix: --multiprocess-region-size
- id: processes
  doc: 'Number of processes. Default: 1'
  type: string
  inputBinding:
    prefix: --processes
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls\
    \ and created within [--corrected-group] containing re-squiggle results. Default:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- build_model
- estimate_reference
