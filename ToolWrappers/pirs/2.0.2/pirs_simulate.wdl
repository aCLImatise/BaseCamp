version 1.0

task PirsSimulate {
  input {
    Int? read_len
    Int? coverage
    Int? insert_len_mean
    Int? insert_len_sd
    Boolean? cyclic_ize
    Boolean? diploid
    File? base_calling_profile
    File? in_del_error_profile
    File? gc_content_bias_profile
    File? subst_error_rate
    String? substitution_error_algorithm
    String? ea_mss
    Int? quality_shift
    Boolean? no_quality_values
  }
  command <<<
    pirs simulate \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(insert_len_mean) then ("--insert-len-mean " +  '"' + insert_len_mean + '"') else ""} \
      ~{if defined(insert_len_sd) then ("--insert-len-sd " +  '"' + insert_len_sd + '"') else ""} \
      ~{if (cyclic_ize) then "--cyclicize" else ""} \
      ~{if (diploid) then "--diploid" else ""} \
      ~{if defined(base_calling_profile) then ("--base-calling-profile " +  '"' + base_calling_profile + '"') else ""} \
      ~{if defined(in_del_error_profile) then ("--indel-error-profile " +  '"' + in_del_error_profile + '"') else ""} \
      ~{if defined(gc_content_bias_profile) then ("--gc-content-bias-profile " +  '"' + gc_content_bias_profile + '"') else ""} \
      ~{if defined(subst_error_rate) then ("--subst-error-rate " +  '"' + subst_error_rate + '"') else ""} \
      ~{if defined(substitution_error_algorithm) then ("--substitution-error-algorithm " +  '"' + substitution_error_algorithm + '"') else ""} \
      ~{if defined(ea_mss) then ("--eamss " +  '"' + ea_mss + '"') else ""} \
      ~{if defined(quality_shift) then ("--quality-shift " +  '"' + quality_shift + '"') else ""} \
      ~{if (no_quality_values) then "--no-quality-values" else ""}
  >>>
  parameter_meta {
    read_len: "Generate reads having a length of LEN.  Default: 100"
    coverage: "Set the average sequencing coverage (sometimes called depth).\\nIt may be either a floating-point number or an integer."
    insert_len_mean: "Generate inserts (fragments) having an average length of LEN.\\nDefault: 180"
    insert_len_sd: "Set the standard deviation of the insert (fragment) length.\\nDefault: 10% of insert length mean."
    cyclic_ize: "Make the paired-end reads face away from either other, as\\nin a jumping library.  Default: the reads face towards each\\nother."
    diploid: "This option asserts that reads are being simulated from a\\ndiploid genome.  It causes the program to abort if there\\nare not exactly two reference sequences; in addition, the\\ncoverage is divided in half, since the two reference\\nsequences are in reality the same genome.  This option\\nis not required to simulate diploid reads, but you must\\nset the coverage correctly otherwise (it will be half\\nas much as you think)."
    base_calling_profile: "Use FILE as the base-calling profile.  This profile will be\\nused to simulate substitution errors.  Default:\\n/usr/local/share/pirs/Base-Calling_Profiles/humNew.PE100.matrix.gz"
    in_del_error_profile: "Use FILE as the indel-error profile.  This profile will be\\nused to simulate insertions and deletions in the reads that\\nare artifacts of the sequencing process.  Default:\\n/usr/local/share/pirs/InDel_Profiles/phixv2.InDel.matrix"
    gc_content_bias_profile: "Use FILE as the GC content bias profile.  This profile will\\nadjust the read coverage based on the GC content of\\nfragments.  Defaults:\\n/usr/local/share/pirs/GC-depth_Profiles/humNew.gcdep_100.dat,\\n/usr/local/share/pirs/GC-depth_Profiles/humNew.gcdep_150.dat,\\n/usr/local/share/pirs/GC-depth_Profiles/humNew.gcdep_200.dat,\\ndepending on the mean insert length."
    subst_error_rate: "Set the substitution error rate.  The base-calling profile\\nwill still be used, but the average frequency of errors will\\nbe changed to RATE.  Set to 0 to disable substitution errors\\ncompletely.  In that case, the base-calling profile will not\\nbe used.  Default: default error rate of base-calling\\nprofile.\\nNote: since pIRS parameterizes the error rate by\\nseveral parameters, it is very difficult to determine exactly\\nwhat needs to be done to make the error rate be a given\\nvalue.  We try to adjust the probabilities of getting each\\nquality score in order to accomodate the user-supplied error\\nrate.  However, depending on your input sequences, the actual\\nerror rate simulated by pIRS could be off by 20% or more.\\nPlease check the informational output to see the final error\\nrate that was actually simulated."
    substitution_error_algorithm: "Set the algorithm used for simulating substitition errors.\\nIt may be set to the string \\\"dist\\\" or \\\"qtrans\\\".  The\\ndefault is \\\"qtrans\\\".\\nThe \\\"dist\\\" algorithm looks up the substitution error rate\\nfor each base pair based on the current cycle and the true\\nbase.  This lookup produces a quality score and a called base\\nthat may or may not be the same as the true base.  In the\\nbase-calling profile, the matrix we use is marked as the\\n[DistMatrix].\\nThe \\\"qtrans\\\" algorithm is a Markov-chain model based on the\\nprevious quality score and current cycle.  The next quality\\nscore is looked up with a certain probability based on these\\nparameters.  The matrix used for this is marked as\\n[QTransMatrix] in the base-calling profile. Then, the the\\nDistMatrix is used to find a called base for the quality score.\\nThe DistMatrix is also used to call the base in the first\\ncycle."
    ea_mss: "Use the EAMSS algorithm for masking read quality.  MODE may be\\nthe string \\\"quality\\\" or \\\"lowercase\\\".  The EAMSS algorithm\\nidentifies low-quality, GC-rich regions near the ends of reads.\\n\\\"quality\\\" mode will change the quality scores on these\\nregions to (2 + quality_shift), while \\\"lowercase\\\" mode\\nwill change the base pairs to lower case, but not change\\nthe quality values.  Default: Do not use EAMSS."
    quality_shift: "Set the ASCII shift of the quality value (usually 64 or 33 for\\nIllumina data).  Default: 33"
    no_quality_values: "--fasta\\nDo not simulate quality values.  The simulated reads will be\\nwritten as a FASTA file rather than a FASTQ file.\\nSubstitution errors may still be done; if you do not want\\nto simulate any substition errors, provide --error-rate=0 or\\n--no-substitution-errors.\\n--no-subst-errors\\n--no-substitution-errors\\nDo not simulate substitution errors.  Equivalent to\\n--error-rate=0.\\n--no-indels\\n--no-indel-errors\\nDo not simulate indels.  The indel error profile will not be\\nused.\\n--no-gc-bias\\n--no-gc-content-bias\\nDo not simulate GC bias.  The GC bias profile will not be\\nused.\\n-o PREFIX, --output-prefix=PREFIX\\nUse PREFIX as the prefix of the output files.  Default:\\n\\\"pirs_reads\\\"\\n-c TYPE, --output-file-type=TYPE\\nThe string \\\"text\\\" or \\\"gzip\\\" to specify the type of\\nthe output FASTQ files containing the simulated reads\\nof the genome, as well as the log files.  Default: \\\"text\\\"\\n-z, --compress\\nEquivalent to -c gzip.\\n-n, --no-logs, --no-log-files\\nDo not write the log files.\\n-S SEED, --random-seed=SEED\\nUse SEED as the random seed. Default:\\ntime(NULL) * getpid().  Note: If pIRS was not compiled with\\n--disable-threads, each thread actually uses its own random\\nnumber generator that is seeded by this base seed added to\\nthe thread number; also, if you need pIRS's output to be\\nexactly reproducible, you must specify the random seed as well\\nas use only 1 simulator thread (--threads=1, or configure\\nwith --disable-threads, or run on system with 4 or fewer\\nprocessors).\\n-t, --threads=NUM_THREADS\\nUse NUM_THREADS threads to simulate reads.  This option is\\nnot available if pIRS was compiled with the --disable-threads\\noption.  Default: number of processors minus 2 if writing\\nuncompressed output, or number of processors minus 3 if\\nwriting compressed output, or 1 if there are not this many\\nprocessors.\\n-q, --quiet    Do not print informational messages.\\n-h, --help     Show this help and exit.\\n-V, --version  Show version information and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}