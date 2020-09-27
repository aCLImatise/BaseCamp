class: CommandLineTool
id: iva.cwl
inputs:
- id: in_name_forward_reads
  doc: "[.gz], --reads_fwd filename[.gz]\nName of forward reads fasta/q file. Must\
    \ be used in\nconjunction with --reads_rev"
  type: File
  inputBinding:
    prefix: -f
- id: in_name_reverse_reads
  doc: "[.gz], --reads_rev filename[.gz]\nName of reverse reads fasta/q file. Must\
    \ be used in\nconjunction with --reads_fwd"
  type: File
  inputBinding:
    prefix: -r
- id: in_fr
  doc: '[.gz]    Name of interleaved fasta/q file'
  type: File
  inputBinding:
    prefix: --fr
- id: in_keep_files
  doc: "Keep intermediate files (could be many!). Default is\nto delete all unnecessary\
    \ files"
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: in_contigs
  doc: "[.gz]\nFasta file of contigs to be extended. Incompatible\nwith --reference"
  type: File
  inputBinding:
    prefix: --contigs
- id: in_reference
  doc: "[.gz]\nEXPERIMENTAL! This option is EXPERIMENTAL, not\nrecommended, and has\
    \ not been tested! Fasta file of\nreference genome, or parts thereof. IVA will\
    \ try to\nassemble one contig per sequence in this file.\nIncompatible with --contigs"
  type: File
  inputBinding:
    prefix: --reference
- id: in_verbose
  doc: "Be verbose by printing messages to stdout. Use up to\nthree times for increasing\
    \ verbosity."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_s_malt_k
  doc: "kmer hash length in SMALT (the -k option in smalt\nindex) [19]"
  type: long
  inputBinding:
    prefix: --smalt_k
- id: in_s_malt_s
  doc: "kmer hash step size in SMALT (the -s option in smalt\nindex) [11]"
  type: long
  inputBinding:
    prefix: --smalt_s
- id: in_s_malt_id
  doc: "Minimum identity threshold for mapping to be reported\n(the -y option in smalt\
    \ map) [0.5]"
  type: double
  inputBinding:
    prefix: --smalt_id
- id: in_ctg_first_trim
  doc: "Number of bases to trim off the end of every contig\nbefore extending for\
    \ the first time [25]"
  type: long
  inputBinding:
    prefix: --ctg_first_trim
- id: in_ctg_iter_trim
  doc: "During iterative extension, number of bases to trim\noff the end of a contig\
    \ when extension fails (then try\nextending again) [10]"
  type: long
  inputBinding:
    prefix: --ctg_iter_trim
- id: in_ext_min_cov
  doc: "Minimum kmer depth needed to use that kmer to extend a\ncontig [10]"
  type: long
  inputBinding:
    prefix: --ext_min_cov
- id: in_ext_min_ratio
  doc: "Sets N, where kmer for extension must be at least N\ntimes more abundant than\
    \ next most common kmer [4]"
  type: double
  inputBinding:
    prefix: --ext_min_ratio
- id: in_ext_max_bases
  doc: "Maximum number of bases to try to extend on each\niteration [100]"
  type: long
  inputBinding:
    prefix: --ext_max_bases
- id: in_ext_min_clip
  doc: "Set minimum number of bases soft clipped off a read\nfor those bases to be\
    \ used for extension [3]"
  type: long
  inputBinding:
    prefix: --ext_min_clip
- id: in_max_contigs
  doc: "Maximum number of contigs allowed in the assembly. No\nmore seeds generated\
    \ if the cutoff is reached [50]"
  type: long
  inputBinding:
    prefix: --max_contigs
- id: in_make_new_seeds
  doc: "When no more contigs can be extended, generate a new\nseed. This is forced\
    \ to be true when --contigs is not\nused"
  type: boolean
  inputBinding:
    prefix: --make_new_seeds
- id: in_seed_start_length
  doc: "When making a seed sequence, use the most common kmer\nof this length. Default\
    \ is to use the minimum of\n(median read length, 95). Warning: it is not\nrecommended\
    \ to set this higher than 95"
  type: long
  inputBinding:
    prefix: --seed_start_length
- id: in_seed_stop_length
  doc: "Stop extending seed using perfect matches from reads\nwhen this length is\
    \ reached. Future extensions are\nthen made by treating the seed as a contig\n\
    [0.9*max_insert]"
  type: long
  inputBinding:
    prefix: --seed_stop_length
- id: in_seed_min_km_er_cov
  doc: Minimum kmer coverage of initial seed [25]
  type: long
  inputBinding:
    prefix: --seed_min_kmer_cov
- id: in_seed_max_km_er_cov
  doc: Maximum kmer coverage of initial seed [1000000]
  type: long
  inputBinding:
    prefix: --seed_max_kmer_cov
- id: in_seed_ext_max_bases
  doc: "Maximum number of bases to try to extend on each\niteration [50]"
  type: long
  inputBinding:
    prefix: --seed_ext_max_bases
- id: in_seed_overlap_length
  doc: "Number of overlapping bases needed between read and\nseed to use that read\
    \ to extend [seed_start_length]"
  type: long
  inputBinding:
    prefix: --seed_overlap_length
- id: in_seed_ext_min_cov
  doc: "Minimum kmer depth needed to use that kmer to extend a\ncontig [10]"
  type: long
  inputBinding:
    prefix: --seed_ext_min_cov
- id: in_seed_ext_min_ratio
  doc: "Sets N, where kmer for extension must be at least N\ntimes more abundant than\
    \ next most common kmer [4]"
  type: double
  inputBinding:
    prefix: --seed_ext_min_ratio
- id: in_trim_mo_matic
  doc: "Provide location of trimmomatic.jar file to enable\nread trimming. Required\
    \ if --adapters used"
  type: File
  inputBinding:
    prefix: --trimmomatic
- id: in_trim_mo_qual
  doc: "Trimmomatic options used to quality trim reads\n[LEADING:10 TRAILING:10 SLIDINGWINDOW:4:20]"
  type: long
  inputBinding:
    prefix: --trimmo_qual
- id: in_adapters
  doc: "Fasta file of adapter sequences to be trimmed off\nreads. If used, must also\
    \ use --trimmomatic. Default\nis file of adapters supplied with IVA"
  type: File
  inputBinding:
    prefix: --adapters
- id: in_min_trimmed_length
  doc: Minimum length of read after trimming [50]
  type: long
  inputBinding:
    prefix: --min_trimmed_length
- id: in_pcr_primers
  doc: "FASTA file of primers. The first perfect match found\nto a sequence in the\
    \ primers file will be trimmed off\nthe start of each read. This is run after\
    \ trimmomatic\n(if --trimmomatic used)"
  type: File
  inputBinding:
    prefix: --pcr_primers
- id: in_max_insert
  doc: "Maximum insert size (includes read length). Reads with\ninferred insert size\
    \ more than the maximum will not be\nused to extend contigs [800]"
  type: long
  inputBinding:
    prefix: --max_insert
- id: in_threads
  doc: Number of threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_kmc_one_thread
  doc: Force kmc to use one thread. By default the value of
  type: boolean
  inputBinding:
    prefix: --kmc_onethread
- id: in_t_slash_threads
  doc: used when running kmc
  type: string
  inputBinding:
    prefix: -t/--threads
- id: in_strand_bias
  doc: "in [0,0.5]\nSet strand bias cutoff of mapped reads when trimming\ncontig ends,\
    \ in the interval [0,0.5]. A value of x\nmeans that a base needs min(fwd_depth,\
    \ rev_depth) /\ntotal_depth <= x. The only time this should be used is\nwith libraries\
    \ with overlapping reads (ie fragment\nlength < 2*read length), and even then,\
    \ it can make\nresults worse. If used, try a low value like 0.1 first\n[0]"
  type: double
  inputBinding:
    prefix: --strand_bias
- id: in_test
  doc: "Run using built in test data. All other options will\nbe ignored, except the\
    \ mandatory output directory, and\n--trimmomatic and --threads can be also be\
    \ used"
  type: Directory
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_test
  doc: "Run using built in test data. All other options will\nbe ignored, except the\
    \ mandatory output directory, and\n--trimmomatic and --threads can be also be\
    \ used"
  type: Directory
  outputBinding:
    glob: $(inputs.in_test)
cwlVersion: v1.1
baseCommand:
- iva
