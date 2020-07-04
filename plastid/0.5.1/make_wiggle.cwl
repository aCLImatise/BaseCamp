class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/make_wiggle.cwl
inputs:
- id: out
  doc: Base name for output files
  type: File
  inputBinding:
    prefix: --out
- id: window_size
  doc: 'Size of nucleotides to fetch at once for export. Large values are faster but
    require more memory (Default: 100000)'
  type: string
  inputBinding:
    prefix: --window_size
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
- id: normalize
  doc: 'Whether counts should be normalized to counts per million (usually not. default:
    False)'
  type: boolean
  inputBinding:
    prefix: --normalize
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
- id: color
  doc: An RGB hex string (`'#NNNNNN'`, `N` in `[0-9,A-F]`) specifying the track color.
  type: string
  inputBinding:
    prefix: --color
- id: track_name
  doc: Name to give browser track
  type: string
  inputBinding:
    prefix: --track_name
- id: output_format
  doc: 'Format of output file (Default: bedgraph)'
  type: string
  inputBinding:
    prefix: --output_format
- id: out_base_fw_do_twig
  doc: Counts at each position for the plus/forward strand of each chromosome
  type: string
  inputBinding:
    position: 0
- id: out_base_rc_do_twig
  doc: Counts at each position for the minus/reverse strand of each chromosome
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- make_wiggle
