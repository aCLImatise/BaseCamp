class: CommandLineTool
id: ../../../tombo_build_model_estimate_alt_reference.cwl
inputs:
- id: alternate_model_filename
  doc: Tombo model for alternative likelihood ratio significance testing.
  type: string
  inputBinding:
    prefix: --alternate-model-filename
- id: alternate_model_name
  doc: A short name to associate with this alternate model (e.g. 5mC, 6mA, etc.).
    This text will be included in output filenames when this model is used for testing.
  type: string
  inputBinding:
    prefix: --alternate-model-name
- id: alternate_model_base
  doc: Non-standard base is an alternative to this base.
  type: string
  inputBinding:
    prefix: --alternate-model-base
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: control_fast_five_based_irs
  doc: Set of directories containing fast5 files for control reads, containing only
    canonical nucleotides.
  type: string[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: alternate_density_filename
  doc: File containing k-mer level kernel density estimates for the alternative sample
    saved using --save-density- basename.
  type: string
  inputBinding:
    prefix: --alternate-density-filename
- id: control_density_filename
  doc: File containing k-mer level kernel density estimates for the control sample
    saved using --save-density- basename.
  type: string
  inputBinding:
    prefix: --control-density-filename
- id: dna
  doc: 'Explicitly select canonical DNA model. Default: Automatically determine from
    FAST5s'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: 'Explicitly select canonical RNA model. Default: Automatically determine from
    FAST5s'
  type: boolean
  inputBinding:
    prefix: --rna
- id: tombo_model_filename
  doc: Tombo model filename. If no file is provided, the default DNA or RNA Tombo
    model will be used.
  type: string
  inputBinding:
    prefix: --tombo-model-filename
- id: alt_fraction_percentile
  doc: 'When esitmating the alternative base incorporation rate, this percent of k-mers
    are assumed to have significantly shifted signal so the alternative distribution
    minimally overlaps the standard base distribution. Default: 5.000000'
  type: string
  inputBinding:
    prefix: --alt-fraction-percentile
- id: kernel_density_bandwidth
  doc: 'Bandwidth applied when performing Gaussian kernal density esitmation on standard
    and alternative base signal distributions. Default: 0.050000'
  type: string
  inputBinding:
    prefix: --kernel-density-bandwidth
- id: minimum_km_er_observations
  doc: 'Number of each k-mer observations required in order to produce a reference
    (genomic locations for standard reference and per-read for alternative reference).
    Default: 1000'
  type: long
  inputBinding:
    prefix: --minimum-kmer-observations
- id: save_density_basename
  doc: "Basename to save alternative model estimation density estimation information.\
    \ See scripts/debug_est_alt.R for info use example. Default: Don't save."
  type: string
  inputBinding:
    prefix: --save-density-basename
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
- estimate_alt_reference
