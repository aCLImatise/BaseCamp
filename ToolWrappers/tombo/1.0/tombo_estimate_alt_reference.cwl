class: CommandLineTool
id: tombo_estimate_alt_reference.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_tombo_model_alternative
  doc: "Tombo model for alternative likelihood ratio\nsignificance testing."
  type: File?
  inputBinding:
    prefix: --alternate-model-filename
- id: in_short_name_associate
  doc: "A short name to associate with this alternate model\n(e.g. 5mC, 4mC, 6mA).\
    \ This text will be included in\noutput filenames when this model is used for\
    \ testing."
  type: long?
  inputBinding:
    prefix: --alternate-model-name
- id: in_alternate_model_base
  doc: Non-standard base is an alternative to this base.
  type: string?
  inputBinding:
    prefix: --alternate-model-base
- id: in_tombo_model_filename
  doc: "Tombo model for event-less resquiggle and significance\ntesting. If no model\
    \ is provided the default DNA or\nRNA tombo model will be used."
  type: File?
  inputBinding:
    prefix: --tombo-model-filename
- id: in_min_alt_base_percentage
  doc: "Minimum estimated percent of non-standard base\ndistribution for inclusion\
    \ of k-mer in non-standard\nmodel. Default: 5.000000"
  type: long?
  inputBinding:
    prefix: --min-alt-base-percentage
- id: in_sd_threshold
  doc: "Minimum level standard deviation difference between\nestimated non-standard\
    \ distribution mean and standard\nmodel mean for inclusion of k-mer in non-standard\n\
    model. Default: 1.500000"
  type: double?
  inputBinding:
    prefix: --sd-threshold
- id: in_minimum_km_er_observations
  doc: "Number of each k-mer observations required in order to\nproduce a reference\
    \ (genomic locations for standard\nreference and per-read for alternative reference).\n\
    Default: 1000"
  type: long?
  inputBinding:
    prefix: --minimum-kmer-observations
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
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
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in__alternatemodelname
  doc: --alternate-model-name
  type: string
  inputBinding:
    position: 0
- id: in__alternatemodelbase
  doc: --alternate-model-base {A,C,G,T}
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- estimate_alt_reference
