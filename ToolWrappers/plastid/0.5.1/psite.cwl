class: CommandLineTool
id: psite.cwl
inputs:
- id: in_min_counts
  doc: "Minimum counts required in normalization region to be\nincluded in metagene\
    \ average (Default: 10)"
  type: long
  inputBinding:
    prefix: --min_counts
- id: in_normalize_over
  doc: "N  Portion of each window against which its individual\nraw count profile\
    \ will be normalized. Specify two\nintegers, in nucleotide distance from landmark\n\
    (negative for upstream, positive for downstream.\nSurround negative numbers with\
    \ quotes.). (Default: 20\n50)"
  type: long
  inputBinding:
    prefix: --normalize_over
- id: in_norm_region
  doc: "N     Deprecated. Use ``--normalize_over`` instead.\nFormerly, Portion of\
    \ each window against which its\nindividual raw count profile will be normalized.\n\
    Specify two integers, in nucleotide distance, from 5'\nend of window. (Default:\
    \ 70 100)"
  type: long
  inputBinding:
    prefix: --norm_region
- id: in_require_upstream
  doc: "If supplied, the P-site offset is taken to be the\ndistance between the largest\
    \ peak upstream of the\nstart codon and the start codon itself. Otherwise, the\n\
    P-site offset is taken to be the distance between the\nlargest peak in the entire\
    \ ROI and the start codon.\nIgnored if ``--constrain`` is used."
  type: boolean
  inputBinding:
    prefix: --require_upstream
- id: in_constrain
  doc: "X       Constrain P-site offset to be between specified\ndistance from start\
    \ codon. Useful for noisy data.\n(Reasonable set: 10 15; default: not constrained)"
  type: long
  inputBinding:
    prefix: --constrain
- id: in_aggregate
  doc: "Estimate P-site from aggregate reads at each position,\ninstead of median\
    \ normalized read density. Noisier,\nbut helpful for lower-count data or read\
    \ lengths with\nfew counts. (Default: False)"
  type: boolean
  inputBinding:
    prefix: --aggregate
- id: in_keep
  doc: "Save intermediate count files. Useful for additional\ncomputations (Default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_default
  doc: "Default 5' P-site offset for read lengths that are not\npresent or evaluated\
    \ in the dataset. Unaffected by\n``--constrain`` (Default: 13)"
  type: long
  inputBinding:
    prefix: --default
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_count_files
  doc: "One or more count or alignment file(s) from a single\nsample or set of samples\
    \ to be pooled."
  type: string[]
  inputBinding:
    prefix: --count_files
- id: in_count_file_format
  doc: "Format of file containing alignments or counts\n(Default: BAM)"
  type: string
  inputBinding:
    prefix: --countfile_format
- id: in_sum
  doc: "Sum used in normalization of counts and RPKM/RPNT\ncalculations (Default:\
    \ total mapped reads/counts in\ndataset)"
  type: string
  inputBinding:
    prefix: --sum
- id: in_min_length
  doc: "Minimum read length required to be included (BAM &\nbowtie files only. Default:\
    \ 25)"
  type: long
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: "Maximum read length permitted to be included (BAM &\nbowtie files only. Default:\
    \ 100)"
  type: long
  inputBinding:
    prefix: --max_length
- id: in_fig_format
  doc: 'File format for figure(s); Default: png)'
  type: string
  inputBinding:
    prefix: --figformat
- id: in_fig_size
  doc: "N         Figure width and height, in inches. (Default: use\nmatplotlibrc\
    \ params)"
  type: string
  inputBinding:
    prefix: --figsize
- id: in_title
  doc: Base title for plot(s).
  type: string
  inputBinding:
    prefix: --title
- id: in_cmap
  doc: "Matplotlib color map from which palette will be made\n(e.g. 'Blues','autumn','Set1';\
    \ default: use colors\nfrom ``--stylesheet`` if given, or color cycle in\nmatplotlibrc)"
  type: long
  inputBinding:
    prefix: --cmap
- id: in_dpi
  doc: 'Figure resolution (Default: 150)'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_stylesheet
  doc: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\n\
    Use this matplotlib stylesheet instead of matplotlibrc\nparams\n"
  type: boolean
  inputBinding:
    prefix: --stylesheet
- id: in_out_base_p_offsets_dot_txt
  doc: "Tab-delimited text file with two columns. The first is read length,\nand the\
    \ second the offset from the fiveprime end of that read length\nto the ribosomal\
    \ P-site. This table can be supplied as the argument\nfor ``--offset`` when using\
    \ ``--fiveprime_variable`` mapping in any\nof the other scripts in plastid.bin"
  type: string
  inputBinding:
    position: 0
- id: in_out_base_meta_gene_profiles_dot_txt
  doc: "Metagene profiles, stratified by read length, before P-site offsets\nare applied."
  type: string
  inputBinding:
    position: 0
- id: in_out_base_k_raw_counts_dot_txt
  doc: "Saved if ``--keep`` is given on command line. Raw count vectors for each\n\
    metagene window specified in input ROI file, without P-site\nmapping rules applied,\
    \ for reads of length `K`"
  type: string
  inputBinding:
    position: 1
- id: in_out_base_k_norm_counts_dot_txt
  doc: "Saved if ``--keep`` is given on command line. Normalized count vectors\nfor\
    \ each metagene window specified in input ROI file, without P-site\nmapping rules\
    \ applied, for reads of length `K`"
  type: string
  inputBinding:
    position: 2
- id: in_roi_file
  doc: "ROI file surrounding start codons, from ``metagene\ngenerate`` subprogram"
  type: string
  inputBinding:
    position: 0
- id: in_out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- psite
