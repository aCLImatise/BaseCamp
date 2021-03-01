class: CommandLineTool
id: tombo_build_model_estimate_alt_reference.cwl
inputs:
- id: in_tombo_model_alternative
  doc: "Tombo model for alternative likelihood ratio\nsignificance testing."
  type: File?
  inputBinding:
    prefix: --alternate-model-filename
- id: in_short_name_associate
  doc: "A short name to associate with this alternate model\n(e.g. 5mC, 6mA, etc.).\
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
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_control_fast_five_based_irs
  doc: "Set of directories containing fast5 files for control\nreads, containing only\
    \ canonical nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_alternate_density_filename
  doc: "File containing k-mer level kernel density estimates\nfor the alternative\
    \ sample saved using --save-density-\nbasename."
  type: File?
  inputBinding:
    prefix: --alternate-density-filename
- id: in_control_density_filename
  doc: "File containing k-mer level kernel density estimates\nfor the control sample\
    \ saved using --save-density-\nbasename."
  type: File?
  inputBinding:
    prefix: --control-density-filename
- id: in_dna
  doc: "Explicitly select canonical DNA model. Default:\nAutomatically determine from\
    \ FAST5s"
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: "Explicitly select canonical RNA model. Default:\nAutomatically determine from\
    \ FAST5s"
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_tombo_model_filename
  doc: "Tombo model filename. If no file is provided, the\ndefault DNA or RNA Tombo\
    \ model will be used."
  type: File?
  inputBinding:
    prefix: --tombo-model-filename
- id: in_alt_fraction_percentile
  doc: "When esitmating the alternative base incorporation\nrate, this percent of\
    \ k-mers are assumed to have\nsignificantly shifted signal so the alternative\n\
    distribution minimally overlaps the standard base\ndistribution. Default: 5.000000"
  type: double?
  inputBinding:
    prefix: --alt-fraction-percentile
- id: in_kernel_density_bandwidth
  doc: "Bandwidth applied when performing Gaussian kernal\ndensity esitmation on standard\
    \ and alternative base\nsignal distributions. Default: 0.050000"
  type: double?
  inputBinding:
    prefix: --kernel-density-bandwidth
- id: in_minimum_km_er_observations
  doc: "Number of each k-mer observations required in order to\nproduce a reference\
    \ (genomic locations for standard\nreference and per-read for alternative reference).\n\
    Default: 1000"
  type: long?
  inputBinding:
    prefix: --minimum-kmer-observations
- id: in_save_density_basename
  doc: "Basename to save alternative model estimation density\nestimation information.\
    \ See scripts/debug_est_alt.R\nfor info use example. Default: Don't save."
  type: string?
  inputBinding:
    prefix: --save-density-basename
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
- id: in__alternatemodelname
  doc: --alternate-model-name
  type: string
  inputBinding:
    position: 0
- id: in__alternatemodelbase
  doc: --alternate-model-base
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
- build_model
- estimate_alt_reference
