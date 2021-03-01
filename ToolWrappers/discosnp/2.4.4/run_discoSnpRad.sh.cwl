class: CommandLineTool
id: run_discoSnpRad.sh.cwl
inputs:
- id: in_f_of
  doc: "<file name of a file of file(s)>\nThe input read files indicated in a file\
    \ of file(s)\nExample: -r bank.fof with bank.fof containing the two lines\ndata_sample/reads_sequence1.fasta\n\
    data_sample/reads_sequence2.fasta.gz"
  type: boolean?
  inputBinding:
    prefix: --fof
- id: in_k_size
  doc: "<int value>\nSet the length of used kmers. Must fit the compiled value.\n\
    Default=31"
  type: long?
  inputBinding:
    prefix: --k_size
- id: in_min_coverage
  doc: "<int value>\nSet the minimal coverage per read set: Used by kissnp2 (don't\
    \ use kmers with lower coverage) and kissreads (read coherency threshold).\nThis\
    \ coverage can be automatically detected per read set (in this case use \"auto\"\
    \ or specified per read set, see the documentation.)\nDefault=3"
  type: long?
  inputBinding:
    prefix: --min_coverage
- id: in_high_precision
  doc: lower recall / higher precision mode. With this parameter no symmetrical crossroads
    may be traversed during bubble detection (by default up to 5 symmetrical crossroads
    may be traversed during bubble detection).
  type: boolean?
  inputBinding:
    prefix: --high_precision
- id: in_graph
  doc: reuse a previously created graph (.h5 file) with same prefix and same k and
    c parameters.
  type: File?
  inputBinding:
    prefix: --graph
- id: in_prefix
  doc: All out files will start with this prefix. Default="discoRes"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_max_coverage
  doc: "Set the maximal coverage for each read set: Used by kissnp2 (don't use kmers\
    \ with higher coverage).\nDefault=2^31-1"
  type: long?
  inputBinding:
    prefix: --max_coverage
- id: in_no_low_complexity
  doc: Remove low complexity bubbles
  type: boolean?
  inputBinding:
    prefix: --no_low_complexity
- id: in_deletion_max_size
  doc: discoSnpRad will search for deletions of size from 1 to D included. Default=0
  type: long?
  inputBinding:
    prefix: --deletion_max_size
- id: in_src
  doc: "[src_path]\nperforms clustering of variants with short_read_connector\nsrc_path:\
    \ **absolute** path to short_read_connector directory, containing the \"short_read_connector.sh\"\
    \ file.\n-Note1: short read connector must be compiled.\n-Note2: if no value is\
    \ given, it assumes short_read_connector.sh is in the PATH env variable.\n-Note3:\
    \ with this option, discoSnpRad outputs a vcf file containing the variants clustered\
    \ by locus"
  type: boolean?
  inputBinding:
    prefix: --src
- id: in_max_size_cluster
  doc: "Discards cluster containing more than this number of variants. (Default 150)\n\
    Requires the -S or --src option"
  type: long?
  inputBinding:
    prefix: --max_size_cluster
- id: in_max_missing
  doc: Remove variants with more than max_missing % missing values. (Default 0.95,
    removes variants detected in 5% and less populations)
  type: double?
  inputBinding:
    prefix: --max_missing
- id: in_min_rank
  doc: Remove variants whose rank is smaller than this threshold. (Default 0.4)
  type: double?
  inputBinding:
    prefix: --min_rank
- id: in_max_snp_per_bubble
  doc: discoSnpRad will search up to P SNPs in a unique bubble. Default=5
  type: long?
  inputBinding:
    prefix: --max_snp_per_bubble
- id: in_max_substitutions
  doc: Set the number of authorized substitutions used while mapping reads on found
    SNPs (kissreads). Default=10
  type: long?
  inputBinding:
    prefix: --max_substitutions
- id: in_max_threads
  doc: "Max number of used threads. 0 means all threads\ndefault 0"
  type: long?
  inputBinding:
    prefix: --max_threads
- id: in_wraith_mode_only
  doc: 'Wraith mode: only show all discoSnpRad commands without running them'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_verbose_avoids_output
  doc: Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1.
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_discoSnpRad.sh
