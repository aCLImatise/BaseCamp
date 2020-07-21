class: CommandLineTool
id: ../../../psite.cwl
inputs:
- id: min_counts
  doc: 'Minimum counts required in normalization region to be included in metagene
    average (Default: 10)'
  type: string
  inputBinding:
    prefix: --min_counts
- id: normalize_over
  doc: 'N  Portion of each window against which its individual raw count profile will
    be normalized. Specify two integers, in nucleotide distance from landmark (negative
    for upstream, positive for downstream. Surround negative numbers with quotes.).
    (Default: 20 50)'
  type: string
  inputBinding:
    prefix: --normalize_over
- id: norm_region
  doc: "N     Deprecated. Use ``--normalize_over`` instead. Formerly, Portion of each\
    \ window against which its individual raw count profile will be normalized. Specify\
    \ two integers, in nucleotide distance, from 5' end of window. (Default: 70 100)"
  type: string
  inputBinding:
    prefix: --norm_region
- id: require_upstream
  doc: If supplied, the P-site offset is taken to be the distance between the largest
    peak upstream of the start codon and the start codon itself. Otherwise, the P-site
    offset is taken to be the distance between the largest peak in the entire ROI
    and the start codon. Ignored if ``--constrain`` is used.
  type: boolean
  inputBinding:
    prefix: --require_upstream
- id: constrain
  doc: 'X       Constrain P-site offset to be between specified distance from start
    codon. Useful for noisy data. (Reasonable set: 10 15; default: not constrained)'
  type: string
  inputBinding:
    prefix: --constrain
- id: aggregate
  doc: 'Estimate P-site from aggregate reads at each position, instead of median normalized
    read density. Noisier, but helpful for lower-count data or read lengths with few
    counts. (Default: False)'
  type: boolean
  inputBinding:
    prefix: --aggregate
- id: keep
  doc: 'Save intermediate count files. Useful for additional computations (Default:
    False)'
  type: boolean
  inputBinding:
    prefix: --keep
- id: default
  doc: "Default 5' P-site offset for read lengths that are not present or evaluated\
    \ in the dataset. Unaffected by ``--constrain`` (Default: 13)"
  type: string
  inputBinding:
    prefix: --default
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: count_files
  doc: One or more count or alignment file(s) from a single sample or set of samples
    to be pooled.
  type: string[]
  inputBinding:
    prefix: --count_files
- id: count_file_format
  doc: 'Format of file containing alignments or counts (Default: BAM)'
  type: string
  inputBinding:
    prefix: --countfile_format
- id: sum
  doc: 'Sum used in normalization of counts and RPKM/RPNT calculations (Default: total
    mapped reads/counts in dataset)'
  type: string
  inputBinding:
    prefix: --sum
- id: min_length
  doc: 'Minimum read length required to be included (BAM & bowtie files only. Default:
    25)'
  type: string
  inputBinding:
    prefix: --min_length
- id: max_length
  doc: 'Maximum read length permitted to be included (BAM & bowtie files only. Default:
    100)'
  type: string
  inputBinding:
    prefix: --max_length
- id: fig_format
  doc: 'File format for figure(s); Default: png)'
  type: string
  inputBinding:
    prefix: --figformat
- id: fig_size
  doc: 'N         Figure width and height, in inches. (Default: use matplotlibrc params)'
  type: string
  inputBinding:
    prefix: --figsize
- id: title
  doc: Base title for plot(s).
  type: string
  inputBinding:
    prefix: --title
- id: cmap
  doc: "Matplotlib color map from which palette will be made (e.g. 'Blues','autumn','Set1';\
    \ default: use colors from ``--stylesheet`` if given, or color cycle in matplotlibrc)"
  type: string
  inputBinding:
    prefix: --cmap
- id: dpi
  doc: 'Figure resolution (Default: 150)'
  type: string
  inputBinding:
    prefix: --dpi
- id: stylesheet
  doc: '{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}
    Use this matplotlib stylesheet instead of matplotlibrc params'
  type: boolean
  inputBinding:
    prefix: --stylesheet
- id: out_base_meta_gene_profiles_dot_txt
  doc: Metagene profiles, stratified by read length, before P-site offsets are applied.
  type: string
  inputBinding:
    position: 0
- id: out_base_k_raw_counts_dot_txt
  doc: Saved if ``--keep`` is given on command line. Raw count vectors for each metagene
    window specified in input ROI file, without P-site mapping rules applied, for
    reads of length `K`
  type: string
  inputBinding:
    position: 1
- id: out_base_k_norm_counts_dot_txt
  doc: Saved if ``--keep`` is given on command line. Normalized count vectors for
    each metagene window specified in input ROI file, without P-site mapping rules
    applied, for reads of length `K`
  type: string
  inputBinding:
    position: 2
- id: roi_file
  doc: ROI file surrounding start codons, from ``metagene generate`` subprogram
  type: string
  inputBinding:
    position: 0
- id: out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- psite
