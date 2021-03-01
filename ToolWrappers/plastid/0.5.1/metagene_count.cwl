class: CommandLineTool
id: metagene_count.cwl
inputs:
- id: in_min_counts
  doc: "Minimum counts required in normalization region to be\nincluded in metagene\
    \ average (Default: 10)"
  type: long?
  inputBinding:
    prefix: --min_counts
- id: in_normalize_over
  doc: "N  Portion of each window against which its individual\nraw count profile\
    \ will be normalized. Specify two\nintegers, in nucleotide distance from landmark\n\
    (negative for upstream, positive for downstream.\nSurround negative numbers with\
    \ quotes.). (Default: 20\n50)"
  type: long?
  inputBinding:
    prefix: --normalize_over
- id: in_norm_region
  doc: "N     Deprecated. Use ``--normalize_over`` instead.\nFormerly, Portion of\
    \ each window against which its\nindividual raw count profile will be normalized.\n\
    Specify two integers, in nucleotide distance, from 5'\nend of window. (Default:\
    \ 70 100)"
  type: long?
  inputBinding:
    prefix: --norm_region
- id: in_landmark
  doc: Name of landmark at zero point, optional.
  type: string?
  inputBinding:
    prefix: --landmark
- id: in_use_mean
  doc: "If supplied, use columnwise mean to generate profile\n(Default: use median)"
  type: boolean?
  inputBinding:
    prefix: --use_mean
- id: in_keep
  doc: "Save intermediate count files. Useful for additional\ncomputations (Default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean?
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
  type: string?
  inputBinding:
    prefix: --countfile_format
- id: in_sum
  doc: "Sum used in normalization of counts and RPKM/RPNT\ncalculations (Default:\
    \ total mapped reads/counts in\ndataset)"
  type: string?
  inputBinding:
    prefix: --sum
- id: in_min_length
  doc: "Minimum read length required to be included (BAM &\nbowtie files only. Default:\
    \ 25)"
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: "Maximum read length permitted to be included (BAM &\nbowtie files only. Default:\
    \ 100)"
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long?
  inputBinding:
    prefix: --maxmem
- id: in_big_genome
  doc: "Use slower but memory-efficient implementation for big\ngenomes or for memory-limited\
    \ computers. For wiggle &\nbowtie files only."
  type: boolean?
  inputBinding:
    prefix: --big_genome
- id: in_five_prime_variable
  doc: "Map read alignment to a variable offset from 5'\nposition of read, with offset\
    \ determined by read\nlength. Requires `--offset` below"
  type: boolean?
  inputBinding:
    prefix: --fiveprime_variable
- id: in_five_prime
  doc: Map read alignment to 5' position.
  type: boolean?
  inputBinding:
    prefix: --fiveprime
- id: in_three_prime
  doc: Map read alignment to 3' position
  type: boolean?
  inputBinding:
    prefix: --threeprime
- id: in_center
  doc: "Subtract N positions from each end of read, and add\n1/(length-N), to each\
    \ remaining position, where N is\nspecified by `--nibble`"
  type: boolean?
  inputBinding:
    prefix: --center
- id: in_offset
  doc: "For `--fiveprime` or `--threeprime`, provide an\ninteger representing the\
    \ offset into the read,\nstarting from either the 5' or 3' end, at which data\n\
    should be plotted. For `--fiveprime_variable`, provide\nthe filename of a two-column\
    \ tab-delimited text file,\nin which first column represents read length or the\n\
    special keyword `'default'`, and the second column\nrepresents the offset from\
    \ the five prime end of that\nread length at which the read should be mapped.\n\
    (Default: 0)"
  type: long?
  inputBinding:
    prefix: --offset
- id: in_nibble
  doc: "For use with `--center` only. nt to remove from each\nend of read before mapping\
    \ (Default: 0)"
  type: long?
  inputBinding:
    prefix: --nibble
- id: in_fig_format
  doc: 'File format for figure(s); Default: png)'
  type: string?
  inputBinding:
    prefix: --figformat
- id: in_fig_size
  doc: "N         Figure width and height, in inches. (Default: use\nmatplotlibrc\
    \ params)"
  type: string?
  inputBinding:
    prefix: --figsize
- id: in_title
  doc: Base title for plot(s).
  type: string?
  inputBinding:
    prefix: --title
- id: in_cmap
  doc: "Matplotlib color map from which palette will be made\n(e.g. 'Blues','autumn','Set1';\
    \ default: use colors\nfrom ``--stylesheet`` if given, or color cycle in\nmatplotlibrc)"
  type: long?
  inputBinding:
    prefix: --cmap
- id: in_dpi
  doc: 'Figure resolution (Default: 150)'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_stylesheet
  doc: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\n\
    Use this matplotlib stylesheet instead of matplotlibrc\nparams\n"
  type: boolean?
  inputBinding:
    prefix: --stylesheet
- id: in_roi_file
  doc: "Text file containing maximal spanning windows and\noffsets, generated by the\
    \ ``generate`` subprogram."
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
hints: []
cwlVersion: v1.1
baseCommand:
- metagene
- count
