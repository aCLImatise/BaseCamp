class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metagene_count.cwl
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
- id: landmark
  doc: Name of landmark at zero point, optional.
  type: string
  inputBinding:
    prefix: --landmark
- id: use_mean
  doc: 'If supplied, use columnwise mean to generate profile (Default: use median)'
  type: boolean
  inputBinding:
    prefix: --use_mean
- id: keep
  doc: 'Save intermediate count files. Useful for additional computations (Default:
    False)'
  type: boolean
  inputBinding:
    prefix: --keep
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
- id: maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: long
  inputBinding:
    prefix: --maxmem
- id: big_genome
  doc: Use slower but memory-efficient implementation for big genomes or for memory-limited
    computers. For wiggle & bowtie files only.
  type: boolean
  inputBinding:
    prefix: --big_genome
- id: five_prime_variable
  doc: Map read alignment to a variable offset from 5' position of read, with offset
    determined by read length. Requires `--offset` below
  type: boolean
  inputBinding:
    prefix: --fiveprime_variable
- id: five_prime
  doc: Map read alignment to 5' position.
  type: boolean
  inputBinding:
    prefix: --fiveprime
- id: three_prime
  doc: Map read alignment to 3' position
  type: boolean
  inputBinding:
    prefix: --threeprime
- id: center
  doc: Subtract N positions from each end of read, and add 1/(length-N), to each remaining
    position, where N is specified by `--nibble`
  type: boolean
  inputBinding:
    prefix: --center
- id: offset
  doc: "For `--fiveprime` or `--threeprime`, provide an integer representing the offset\
    \ into the read, starting from either the 5' or 3' end, at which data should be\
    \ plotted. For `--fiveprime_variable`, provide the filename of a two-column tab-delimited\
    \ text file, in which first column represents read length or the special keyword\
    \ `'default'`, and the second column represents the offset from the five prime\
    \ end of that read length at which the read should be mapped. (Default: 0)"
  type: string
  inputBinding:
    prefix: --offset
- id: nibble
  doc: 'For use with `--center` only. nt to remove from each end of read before mapping
    (Default: 0)'
  type: string
  inputBinding:
    prefix: --nibble
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
- id: roi_file
  doc: Text file containing maximal spanning windows and offsets, generated by the
    ``generate`` subprogram.
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
- metagene
- count
