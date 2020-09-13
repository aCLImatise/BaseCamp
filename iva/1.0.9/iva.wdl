version 1.0

task Iva {
  input {
    File? name_forward_reads
    File? name_reverse_reads
    File? fr
    Boolean? keep_files
    File? contigs
    File? reference
    Boolean? verbose
    Int? s_malt_k
    Int? s_malt_s
    Float? s_malt_id
    Int? ctg_first_trim
    Int? ctg_iter_trim
    Int? ext_min_cov
    Float? ext_min_ratio
    Int? ext_max_bases
    Int? ext_min_clip
    Int? max_contigs
    Boolean? make_new_seeds
    Int? seed_start_length
    Int? seed_stop_length
    Int? seed_min_km_er_cov
    Int? seed_max_km_er_cov
    Int? seed_ext_max_bases
    Int? seed_overlap_length
    Int? seed_ext_min_cov
    Float? seed_ext_min_ratio
    File? trim_mo_matic
    Int? trim_mo_qual
    File? adapters
    Int? min_trimmed_length
    File? pcr_primers
    Int? max_insert
    Int? threads
    Boolean? kmc_one_thread
    String? t_slash_threads
    Float? strand_bias
    Directory? test
  }
  command <<<
    iva \
      ~{if defined(name_forward_reads) then ("-f " +  '"' + name_forward_reads + '"') else ""} \
      ~{if defined(name_reverse_reads) then ("-r " +  '"' + name_reverse_reads + '"') else ""} \
      ~{if defined(fr) then ("--fr " +  '"' + fr + '"') else ""} \
      ~{if (keep_files) then "--keep_files" else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(s_malt_k) then ("--smalt_k " +  '"' + s_malt_k + '"') else ""} \
      ~{if defined(s_malt_s) then ("--smalt_s " +  '"' + s_malt_s + '"') else ""} \
      ~{if defined(s_malt_id) then ("--smalt_id " +  '"' + s_malt_id + '"') else ""} \
      ~{if defined(ctg_first_trim) then ("--ctg_first_trim " +  '"' + ctg_first_trim + '"') else ""} \
      ~{if defined(ctg_iter_trim) then ("--ctg_iter_trim " +  '"' + ctg_iter_trim + '"') else ""} \
      ~{if defined(ext_min_cov) then ("--ext_min_cov " +  '"' + ext_min_cov + '"') else ""} \
      ~{if defined(ext_min_ratio) then ("--ext_min_ratio " +  '"' + ext_min_ratio + '"') else ""} \
      ~{if defined(ext_max_bases) then ("--ext_max_bases " +  '"' + ext_max_bases + '"') else ""} \
      ~{if defined(ext_min_clip) then ("--ext_min_clip " +  '"' + ext_min_clip + '"') else ""} \
      ~{if defined(max_contigs) then ("--max_contigs " +  '"' + max_contigs + '"') else ""} \
      ~{if (make_new_seeds) then "--make_new_seeds" else ""} \
      ~{if defined(seed_start_length) then ("--seed_start_length " +  '"' + seed_start_length + '"') else ""} \
      ~{if defined(seed_stop_length) then ("--seed_stop_length " +  '"' + seed_stop_length + '"') else ""} \
      ~{if defined(seed_min_km_er_cov) then ("--seed_min_kmer_cov " +  '"' + seed_min_km_er_cov + '"') else ""} \
      ~{if defined(seed_max_km_er_cov) then ("--seed_max_kmer_cov " +  '"' + seed_max_km_er_cov + '"') else ""} \
      ~{if defined(seed_ext_max_bases) then ("--seed_ext_max_bases " +  '"' + seed_ext_max_bases + '"') else ""} \
      ~{if defined(seed_overlap_length) then ("--seed_overlap_length " +  '"' + seed_overlap_length + '"') else ""} \
      ~{if defined(seed_ext_min_cov) then ("--seed_ext_min_cov " +  '"' + seed_ext_min_cov + '"') else ""} \
      ~{if defined(seed_ext_min_ratio) then ("--seed_ext_min_ratio " +  '"' + seed_ext_min_ratio + '"') else ""} \
      ~{if defined(trim_mo_matic) then ("--trimmomatic " +  '"' + trim_mo_matic + '"') else ""} \
      ~{if defined(trim_mo_qual) then ("--trimmo_qual " +  '"' + trim_mo_qual + '"') else ""} \
      ~{if defined(adapters) then ("--adapters " +  '"' + adapters + '"') else ""} \
      ~{if defined(min_trimmed_length) then ("--min_trimmed_length " +  '"' + min_trimmed_length + '"') else ""} \
      ~{if defined(pcr_primers) then ("--pcr_primers " +  '"' + pcr_primers + '"') else ""} \
      ~{if defined(max_insert) then ("--max_insert " +  '"' + max_insert + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (kmc_one_thread) then "--kmc_onethread" else ""} \
      ~{if defined(t_slash_threads) then ("-t/--threads " +  '"' + t_slash_threads + '"') else ""} \
      ~{if defined(strand_bias) then ("--strand_bias " +  '"' + strand_bias + '"') else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  parameter_meta {
    name_forward_reads: "[.gz], --reads_fwd filename[.gz]\\nName of forward reads fasta/q file. Must be used in\\nconjunction with --reads_rev"
    name_reverse_reads: "[.gz], --reads_rev filename[.gz]\\nName of reverse reads fasta/q file. Must be used in\\nconjunction with --reads_fwd"
    fr: "[.gz]    Name of interleaved fasta/q file"
    keep_files: "Keep intermediate files (could be many!). Default is\\nto delete all unnecessary files"
    contigs: "[.gz]\\nFasta file of contigs to be extended. Incompatible\\nwith --reference"
    reference: "[.gz]\\nEXPERIMENTAL! This option is EXPERIMENTAL, not\\nrecommended, and has not been tested! Fasta file of\\nreference genome, or parts thereof. IVA will try to\\nassemble one contig per sequence in this file.\\nIncompatible with --contigs"
    verbose: "Be verbose by printing messages to stdout. Use up to\\nthree times for increasing verbosity."
    s_malt_k: "kmer hash length in SMALT (the -k option in smalt\\nindex) [19]"
    s_malt_s: "kmer hash step size in SMALT (the -s option in smalt\\nindex) [11]"
    s_malt_id: "Minimum identity threshold for mapping to be reported\\n(the -y option in smalt map) [0.5]"
    ctg_first_trim: "Number of bases to trim off the end of every contig\\nbefore extending for the first time [25]"
    ctg_iter_trim: "During iterative extension, number of bases to trim\\noff the end of a contig when extension fails (then try\\nextending again) [10]"
    ext_min_cov: "Minimum kmer depth needed to use that kmer to extend a\\ncontig [10]"
    ext_min_ratio: "Sets N, where kmer for extension must be at least N\\ntimes more abundant than next most common kmer [4]"
    ext_max_bases: "Maximum number of bases to try to extend on each\\niteration [100]"
    ext_min_clip: "Set minimum number of bases soft clipped off a read\\nfor those bases to be used for extension [3]"
    max_contigs: "Maximum number of contigs allowed in the assembly. No\\nmore seeds generated if the cutoff is reached [50]"
    make_new_seeds: "When no more contigs can be extended, generate a new\\nseed. This is forced to be true when --contigs is not\\nused"
    seed_start_length: "When making a seed sequence, use the most common kmer\\nof this length. Default is to use the minimum of\\n(median read length, 95). Warning: it is not\\nrecommended to set this higher than 95"
    seed_stop_length: "Stop extending seed using perfect matches from reads\\nwhen this length is reached. Future extensions are\\nthen made by treating the seed as a contig\\n[0.9*max_insert]"
    seed_min_km_er_cov: "Minimum kmer coverage of initial seed [25]"
    seed_max_km_er_cov: "Maximum kmer coverage of initial seed [1000000]"
    seed_ext_max_bases: "Maximum number of bases to try to extend on each\\niteration [50]"
    seed_overlap_length: "Number of overlapping bases needed between read and\\nseed to use that read to extend [seed_start_length]"
    seed_ext_min_cov: "Minimum kmer depth needed to use that kmer to extend a\\ncontig [10]"
    seed_ext_min_ratio: "Sets N, where kmer for extension must be at least N\\ntimes more abundant than next most common kmer [4]"
    trim_mo_matic: "Provide location of trimmomatic.jar file to enable\\nread trimming. Required if --adapters used"
    trim_mo_qual: "Trimmomatic options used to quality trim reads\\n[LEADING:10 TRAILING:10 SLIDINGWINDOW:4:20]"
    adapters: "Fasta file of adapter sequences to be trimmed off\\nreads. If used, must also use --trimmomatic. Default\\nis file of adapters supplied with IVA"
    min_trimmed_length: "Minimum length of read after trimming [50]"
    pcr_primers: "FASTA file of primers. The first perfect match found\\nto a sequence in the primers file will be trimmed off\\nthe start of each read. This is run after trimmomatic\\n(if --trimmomatic used)"
    max_insert: "Maximum insert size (includes read length). Reads with\\ninferred insert size more than the maximum will not be\\nused to extend contigs [800]"
    threads: "Number of threads to use [1]"
    kmc_one_thread: "Force kmc to use one thread. By default the value of"
    t_slash_threads: "used when running kmc"
    strand_bias: "in [0,0.5]\\nSet strand bias cutoff of mapped reads when trimming\\ncontig ends, in the interval [0,0.5]. A value of x\\nmeans that a base needs min(fwd_depth, rev_depth) /\\ntotal_depth <= x. The only time this should be used is\\nwith libraries with overlapping reads (ie fragment\\nlength < 2*read length), and even then, it can make\\nresults worse. If used, try a low value like 0.1 first\\n[0]"
    test: "Run using built in test data. All other options will\\nbe ignored, except the mandatory output directory, and\\n--trimmomatic and --threads can be also be used"
  }
  output {
    File out_stdout = stdout()
    Directory out_test = "${in_test}"
  }
}