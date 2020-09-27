class: CommandLineTool
id: run_discoSnpRad.sh.cwl
inputs:
- id: in_f_of
  doc: "<file name of a file of file(s)>\nThe input read files indicated in a file\
    \ of file(s)\nExample: -r bank.fof with bank.fof containing the two lines\ndata_sample/reads_sequence1.fasta\n\
    data_sample/reads_sequence2.fasta.gz"
  type: boolean
  inputBinding:
    prefix: --fof
- id: in__ksize_value
  doc: "| --k_size value <int value>\nSet the length of used kmers. Must fit the compiled\
    \ value.\nDefault=31"
  type: boolean
  inputBinding:
    prefix: -k
- id: in__mincoverage_value
  doc: "| --min_coverage value <int value>\nSet the minimal coverage per read set:\
    \ Used by kissnp2 (don't use kmers with lower coverage) and kissreads (read coherency\
    \ threshold).\nThis coverage can be automatically detected per read set (in this\
    \ case use \"auto\" or specified per read set, see the documentation.)\nDefault=3"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_high_precision
  doc: "| -R\nlower recall / higher precision mode. With this parameter no symmetrical\
    \ crossroads may be traversed during bubble detection (by default up to 5 symmetrical\
    \ crossroads may be traversed during bubble detection)."
  type: boolean
  inputBinding:
    prefix: --high_precision
- id: in__graph_file
  doc: "| --graph <file name>\nreuse a previously created graph (.h5 file) with same\
    \ prefix and same k and c parameters."
  type: boolean
  inputBinding:
    prefix: -g
- id: in__prefix_stringall
  doc: "| --prefix <string>\nAll out files will start with this prefix. Default=\"\
    discoRes\""
  type: boolean
  inputBinding:
    prefix: -p
- id: in__maxcoverage_int
  doc: "| --max_coverage <int value>\nSet the maximal coverage for each read set:\
    \ Used by kissnp2 (don't use kmers with higher coverage).\nDefault=2^31-1"
  type: boolean
  inputBinding:
    prefix: -C
- id: in__nolowcomplexityremove_low
  doc: "| --no_low_complexity\nRemove low complexity bubbles"
  type: boolean
  inputBinding:
    prefix: -l
- id: in__deletionmaxsize_int
  doc: "| --deletion_max_size <int value>\ndiscoSnpRad will search for deletions of\
    \ size from 1 to D included. Default=0"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_src
  doc: "[src_path]\nperforms clustering of variants with short_read_connector\nsrc_path:\
    \ **absolute** path to short_read_connector directory, containing the \"short_read_connector.sh\"\
    \ file.\n-Note1: short read connector must be compiled.\n-Note2: if no value is\
    \ given, it assumes short_read_connector.sh is in the PATH env variable.\n-Note3:\
    \ with this option, discoSnpRad outputs a vcf file containing the variants clustered\
    \ by locus"
  type: boolean
  inputBinding:
    prefix: --src
- id: in_max_size_cluster
  doc: "Discards cluster containing more than this number of variants. (Default 150)\n\
    Requires the -S or --src option"
  type: long
  inputBinding:
    prefix: --max_size_cluster
- id: in_max_missing
  doc: Remove variants with more than max_missing % missing values. (Default 0.95,
    removes variants detected in 5% and less populations)
  type: double
  inputBinding:
    prefix: --max_missing
- id: in_min_rank
  doc: Remove variants whose rank is smaller than this threshold. (Default 0.4)
  type: double
  inputBinding:
    prefix: --min_rank
- id: in__maxsnpperbubble_intdiscosnprad
  doc: "| --max_snp_per_bubble <int>\ndiscoSnpRad will search up to P SNPs in a unique\
    \ bubble. Default=5"
  type: boolean
  inputBinding:
    prefix: -P
- id: in__intset_number
  doc: "| --max_substitutions <int>\nSet the number of authorized substitutions used\
    \ while mapping reads on found SNPs (kissreads). Default=10"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__maxthreads_intmax
  doc: "| --max_threads <int>\nMax number of used threads. 0 means all threads\ndefault\
    \ 0"
  type: boolean
  inputBinding:
    prefix: -u
- id: in_wraith_mode_only
  doc: 'Wraith mode: only show all discoSnpRad commands without running them'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_verbose_avoids_output
  doc: Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1.
  type: long
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_discoSnpRad.sh
