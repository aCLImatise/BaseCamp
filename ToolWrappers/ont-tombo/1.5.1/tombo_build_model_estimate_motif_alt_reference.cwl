class: CommandLineTool
id: tombo_build_model_estimate_motif_alt_reference.cwl
inputs:
- id: in_alternate_model_name
  doc: "A short name to associate with this alternate model\n(e.g. 5mC, 6mA, etc.).\
    \ This text will be included in\noutput filenames when this model is used for\
    \ testing."
  type: long
  inputBinding:
    prefix: --alternate-model-name
- id: in_motif_description
  doc: "Motif containing alternate-base. All positions with\nthis motif should be\
    \ modified (or filtered with\n[--valid-locations-filename]). Format descriptions\
    \ as:\n\"motif:mod_pos\". mod_pos indicates the alternate-base\nwithin the motif\
    \ (1-based index). Example: \"CG:1\" to\ntrain a CpG methylation model."
  type: File
  inputBinding:
    prefix: --motif-description
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_upstream_bases
  doc: 'Upstream bases in k-mer. Default: 1'
  type: string
  inputBinding:
    prefix: --upstream-bases
- id: in_downstream_bases
  doc: 'Downstream bases in k-mer. Default: 2'
  type: string
  inputBinding:
    prefix: --downstream-bases
- id: in_minimum_km_er_observations
  doc: "Number of each k-mer observations required in order to\nproduce a reference\
    \ (genomic locations for standard\nreference and per-read for alternative reference).\n\
    Default: 1"
  type: long
  inputBinding:
    prefix: --minimum-kmer-observations
- id: in_valid_locations_filename
  doc: "Bed format file containing single base locations of\nvalid sites. Should contain\
    \ 6 fields including strand.\nE.g. modified base locations."
  type: File
  inputBinding:
    prefix: --valid-locations-filename
- id: in_minimum_test_reads
  doc: "Number of reads required at a position to perform\nsignificance testing or\
    \ contribute to model\nestimation. Default: 10"
  type: long
  inputBinding:
    prefix: --minimum-test-reads
- id: in_coverage_threshold
  doc: "Maximum mean coverage per region when estimating k-mer\nmodel (limits compute\
    \ time for deep samples). Default:\n100"
  type: long
  inputBinding:
    prefix: --coverage-threshold
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
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls\
    \ and created within\n[--corrected-group] containing re-squiggle results.\nDefault:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- build_model
- estimate_motif_alt_reference
