class: CommandLineTool
id: pirs_simulate.cwl
inputs:
- id: in_read_len
  doc: 'Generate reads having a length of LEN.  Default: 100'
  type: long?
  inputBinding:
    prefix: --read-len
- id: in_coverage
  doc: "Set the average sequencing coverage (sometimes called depth).\nIt may be either\
    \ a floating-point number or an integer."
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_insert_len_mean
  doc: "Generate inserts (fragments) having an average length of LEN.\nDefault: 180"
  type: long?
  inputBinding:
    prefix: --insert-len-mean
- id: in_insert_len_sd
  doc: "Set the standard deviation of the insert (fragment) length.\nDefault: 10%\
    \ of insert length mean."
  type: long?
  inputBinding:
    prefix: --insert-len-sd
- id: in_cyclic_ize
  doc: "Make the paired-end reads face away from either other, as\nin a jumping library.\
    \  Default: the reads face towards each\nother."
  type: boolean?
  inputBinding:
    prefix: --cyclicize
- id: in_diploid
  doc: "This option asserts that reads are being simulated from a\ndiploid genome.\
    \  It causes the program to abort if there\nare not exactly two reference sequences;\
    \ in addition, the\ncoverage is divided in half, since the two reference\nsequences\
    \ are in reality the same genome.  This option\nis not required to simulate diploid\
    \ reads, but you must\nset the coverage correctly otherwise (it will be half\n\
    as much as you think)."
  type: boolean?
  inputBinding:
    prefix: --diploid
- id: in_base_calling_profile
  doc: "Use FILE as the base-calling profile.  This profile will be\nused to simulate\
    \ substitution errors.  Default:\n/usr/local/share/pirs/Base-Calling_Profiles/humNew.PE100.matrix.gz"
  type: File?
  inputBinding:
    prefix: --base-calling-profile
- id: in_in_del_error_profile
  doc: "Use FILE as the indel-error profile.  This profile will be\nused to simulate\
    \ insertions and deletions in the reads that\nare artifacts of the sequencing\
    \ process.  Default:\n/usr/local/share/pirs/InDel_Profiles/phixv2.InDel.matrix"
  type: File?
  inputBinding:
    prefix: --indel-error-profile
- id: in_gc_content_bias_profile
  doc: "Use FILE as the GC content bias profile.  This profile will\nadjust the read\
    \ coverage based on the GC content of\nfragments.  Defaults:\n/usr/local/share/pirs/GC-depth_Profiles/humNew.gcdep_100.dat,\n\
    /usr/local/share/pirs/GC-depth_Profiles/humNew.gcdep_150.dat,\n/usr/local/share/pirs/GC-depth_Profiles/humNew.gcdep_200.dat,\n\
    depending on the mean insert length."
  type: File?
  inputBinding:
    prefix: --gc-content-bias-profile
- id: in_subst_error_rate
  doc: "Set the substitution error rate.  The base-calling profile\nwill still be\
    \ used, but the average frequency of errors will\nbe changed to RATE.  Set to\
    \ 0 to disable substitution errors\ncompletely.  In that case, the base-calling\
    \ profile will not\nbe used.  Default: default error rate of base-calling\nprofile.\n\
    Note: since pIRS parameterizes the error rate by\nseveral parameters, it is very\
    \ difficult to determine exactly\nwhat needs to be done to make the error rate\
    \ be a given\nvalue.  We try to adjust the probabilities of getting each\nquality\
    \ score in order to accomodate the user-supplied error\nrate.  However, depending\
    \ on your input sequences, the actual\nerror rate simulated by pIRS could be off\
    \ by 20% or more.\nPlease check the informational output to see the final error\n\
    rate that was actually simulated."
  type: File?
  inputBinding:
    prefix: --subst-error-rate
- id: in_substitution_error_algorithm
  doc: "Set the algorithm used for simulating substitition errors.\nIt may be set\
    \ to the string \"dist\" or \"qtrans\".  The\ndefault is \"qtrans\".\nThe \"dist\"\
    \ algorithm looks up the substitution error rate\nfor each base pair based on\
    \ the current cycle and the true\nbase.  This lookup produces a quality score\
    \ and a called base\nthat may or may not be the same as the true base.  In the\n\
    base-calling profile, the matrix we use is marked as the\n[DistMatrix].\nThe \"\
    qtrans\" algorithm is a Markov-chain model based on the\nprevious quality score\
    \ and current cycle.  The next quality\nscore is looked up with a certain probability\
    \ based on these\nparameters.  The matrix used for this is marked as\n[QTransMatrix]\
    \ in the base-calling profile. Then, the the\nDistMatrix is used to find a called\
    \ base for the quality score.\nThe DistMatrix is also used to call the base in\
    \ the first\ncycle."
  type: string?
  inputBinding:
    prefix: --substitution-error-algorithm
- id: in_ea_mss
  doc: "Use the EAMSS algorithm for masking read quality.  MODE may be\nthe string\
    \ \"quality\" or \"lowercase\".  The EAMSS algorithm\nidentifies low-quality,\
    \ GC-rich regions near the ends of reads.\n\"quality\" mode will change the quality\
    \ scores on these\nregions to (2 + quality_shift), while \"lowercase\" mode\n\
    will change the base pairs to lower case, but not change\nthe quality values.\
    \  Default: Do not use EAMSS."
  type: string?
  inputBinding:
    prefix: --eamss
- id: in_quality_shift
  doc: "Set the ASCII shift of the quality value (usually 64 or 33 for\nIllumina data).\
    \  Default: 33"
  type: long?
  inputBinding:
    prefix: --quality-shift
- id: in_no_quality_values
  doc: "Do not simulate quality values.  The simulated reads will be\nwritten as a\
    \ FASTA file rather than a FASTQ file.\nSubstitution errors may still be done;\
    \ if you do not want\nto simulate any substition errors, provide --error-rate=0\
    \ or\n--no-substitution-errors."
  type: boolean?
  inputBinding:
    prefix: --no-quality-values
- id: in_no_substitution_errors
  doc: "Do not simulate substitution errors.  Equivalent to\n--error-rate=0."
  type: boolean?
  inputBinding:
    prefix: --no-substitution-errors
- id: in_no_in_del_errors
  doc: "Do not simulate indels.  The indel error profile will not be\nused."
  type: boolean?
  inputBinding:
    prefix: --no-indel-errors
- id: in_no_gc_content_bias
  doc: "Do not simulate GC bias.  The GC bias profile will not be\nused."
  type: boolean?
  inputBinding:
    prefix: --no-gc-content-bias
- id: in_output_prefix
  doc: "Use PREFIX as the prefix of the output files.  Default:\n\"pirs_reads\""
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_output_file_type
  doc: "The string \"text\" or \"gzip\" to specify the type of\nthe output FASTQ files\
    \ containing the simulated reads\nof the genome, as well as the log files.  Default:\
    \ \"text\""
  type: File?
  inputBinding:
    prefix: --output-file-type
- id: in_compress
  doc: Equivalent to -c gzip.
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_no_log_files
  doc: Do not write the log files.
  type: boolean?
  inputBinding:
    prefix: --no-log-files
- id: in_random_seed
  doc: "Use SEED as the random seed. Default:\ntime(NULL) * getpid().  Note: If pIRS\
    \ was not compiled with\n--disable-threads, each thread actually uses its own\
    \ random\nnumber generator that is seeded by this base seed added to\nthe thread\
    \ number; also, if you need pIRS's output to be\nexactly reproducible, you must\
    \ specify the random seed as well\nas use only 1 simulator thread (--threads=1,\
    \ or configure\nwith --disable-threads, or run on system with 4 or fewer\nprocessors)."
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_threads
  doc: "Use NUM_THREADS threads to simulate reads.  This option is\nnot available\
    \ if pIRS was compiled with the --disable-threads\noption.  Default: number of\
    \ processors minus 2 if writing\nuncompressed output, or number of processors\
    \ minus 3 if\nwriting compressed output, or 1 if there are not this many\nprocessors."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: Do not print informational messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_type
  doc: "The string \"text\" or \"gzip\" to specify the type of\nthe output FASTQ files\
    \ containing the simulated reads\nof the genome, as well as the log files.  Default:\
    \ \"text\""
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_type)
hints: []
cwlVersion: v1.1
baseCommand:
- pirs
- simulate
