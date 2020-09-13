class: CommandLineTool
id: ../../../make_wiggle.cwl
inputs:
- id: in_out
  doc: Base name for output files
  type: File
  inputBinding:
    prefix: --out
- id: in_window_size
  doc: "Size of nucleotides to fetch at once for export. Large\nvalues are faster\
    \ but require more memory (Default:\n100000)"
  type: long
  inputBinding:
    prefix: --window_size
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
- id: in_normalize
  doc: "Whether counts should be normalized to counts per\nmillion (usually not. default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --normalize
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
- id: in_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long
  inputBinding:
    prefix: --maxmem
- id: in_big_genome
  doc: "Use slower but memory-efficient implementation for big\ngenomes or for memory-limited\
    \ computers. For wiggle &\nbowtie files only."
  type: boolean
  inputBinding:
    prefix: --big_genome
- id: in_five_prime_variable
  doc: "Map read alignment to a variable offset from 5'\nposition of read, with offset\
    \ determined by read\nlength. Requires `--offset` below"
  type: boolean
  inputBinding:
    prefix: --fiveprime_variable
- id: in_five_prime
  doc: Map read alignment to 5' position.
  type: boolean
  inputBinding:
    prefix: --fiveprime
- id: in_three_prime
  doc: Map read alignment to 3' position
  type: boolean
  inputBinding:
    prefix: --threeprime
- id: in_center
  doc: "Subtract N positions from each end of read, and add\n1/(length-N), to each\
    \ remaining position, where N is\nspecified by `--nibble`"
  type: boolean
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
  type: long
  inputBinding:
    prefix: --offset
- id: in_nibble
  doc: "For use with `--center` only. nt to remove from each\nend of read before mapping\
    \ (Default: 0)"
  type: long
  inputBinding:
    prefix: --nibble
- id: in_color
  doc: "An RGB hex string (`'#NNNNNN'`, `N` in `[0-9,A-F]`)\nspecifying the track\
    \ color."
  type: string
  inputBinding:
    prefix: --color
- id: in_track_name
  doc: Name to give browser track
  type: string
  inputBinding:
    prefix: --track_name
- id: in_output_format
  doc: "Format of output file (Default: bedgraph)\n"
  type: File
  inputBinding:
    prefix: --output_format
- id: in_out_base_fw_do_twig
  doc: Counts at each position for the plus/forward strand of each chromosome
  type: string
  inputBinding:
    position: 0
- id: in_out_base_rc_do_twig
  doc: Counts at each position for the minus/reverse strand of each chromosome
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_format
  doc: "Format of output file (Default: bedgraph)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_format)
cwlVersion: v1.1
baseCommand:
- make_wiggle
