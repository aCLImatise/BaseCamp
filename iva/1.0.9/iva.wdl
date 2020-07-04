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
    String? trim_mo_qual
    File? adapters
    Int? min_trimmed_length
    File? pcr_primers
    Int? max_insert
    Int? threads
    Boolean? kmc_one_thread
    Float? strand_bias
    Boolean? test
  }
  command <<<
    iva \
      ~{if defined(name_forward_reads) then ("-f " +  '"' + name_forward_reads + '"') else ""} \
      ~{if defined(name_reverse_reads) then ("-r " +  '"' + name_reverse_reads + '"') else ""} \
      ~{if defined(fr) then ("--fr " +  '"' + fr + '"') else ""} \
      ~{true="--keep_files" false="" keep_files} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
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
      ~{true="--make_new_seeds" false="" make_new_seeds} \
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
      ~{true="--kmc_onethread" false="" kmc_one_thread} \
      ~{if defined(strand_bias) then ("--strand_bias " +  '"' + strand_bias + '"') else ""} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    name_forward_reads: "[.gz], --reads_fwd filename[.gz] Name of forward reads fasta/q file. Must be used in conjunction with --reads_rev"
    name_reverse_reads: "[.gz], --reads_rev filename[.gz] Name of reverse reads fasta/q file. Must be used in conjunction with --reads_fwd"
    fr: "[.gz]    Name of interleaved fasta/q file"
    keep_files: "Keep intermediate files (could be many!). Default is to delete all unnecessary files"
    contigs: "[.gz] Fasta file of contigs to be extended. Incompatible with --reference"
    reference: "[.gz] EXPERIMENTAL! This option is EXPERIMENTAL, not recommended, and has not been tested! Fasta file of reference genome, or parts thereof. IVA will try to assemble one contig per sequence in this file. Incompatible with --contigs"
    verbose: "Be verbose by printing messages to stdout. Use up to three times for increasing verbosity."
    s_malt_k: "kmer hash length in SMALT (the -k option in smalt index) [19]"
    s_malt_s: "kmer hash step size in SMALT (the -s option in smalt index) [11]"
    s_malt_id: "Minimum identity threshold for mapping to be reported (the -y option in smalt map) [0.5]"
    ctg_first_trim: "Number of bases to trim off the end of every contig before extending for the first time [25]"
    ctg_iter_trim: "During iterative extension, number of bases to trim off the end of a contig when extension fails (then try extending again) [10]"
    ext_min_cov: "Minimum kmer depth needed to use that kmer to extend a contig [10]"
    ext_min_ratio: "Sets N, where kmer for extension must be at least N times more abundant than next most common kmer [4]"
    ext_max_bases: "Maximum number of bases to try to extend on each iteration [100]"
    ext_min_clip: "Set minimum number of bases soft clipped off a read for those bases to be used for extension [3]"
    max_contigs: "Maximum number of contigs allowed in the assembly. No more seeds generated if the cutoff is reached [50]"
    make_new_seeds: "When no more contigs can be extended, generate a new seed. This is forced to be true when --contigs is not used"
    seed_start_length: "When making a seed sequence, use the most common kmer of this length. Default is to use the minimum of (median read length, 95). Warning: it is not recommended to set this higher than 95"
    seed_stop_length: "Stop extending seed using perfect matches from reads when this length is reached. Future extensions are then made by treating the seed as a contig [0.9*max_insert]"
    seed_min_km_er_cov: "Minimum kmer coverage of initial seed [25]"
    seed_max_km_er_cov: "Maximum kmer coverage of initial seed [1000000]"
    seed_ext_max_bases: "Maximum number of bases to try to extend on each iteration [50]"
    seed_overlap_length: "Number of overlapping bases needed between read and seed to use that read to extend [seed_start_length]"
    seed_ext_min_cov: "Minimum kmer depth needed to use that kmer to extend a contig [10]"
    seed_ext_min_ratio: "Sets N, where kmer for extension must be at least N times more abundant than next most common kmer [4]"
    trim_mo_matic: "Provide location of trimmomatic.jar file to enable read trimming. Required if --adapters used"
    trim_mo_qual: "Trimmomatic options used to quality trim reads [LEADING:10 TRAILING:10 SLIDINGWINDOW:4:20]"
    adapters: "Fasta file of adapter sequences to be trimmed off reads. If used, must also use --trimmomatic. Default is file of adapters supplied with IVA"
    min_trimmed_length: "Minimum length of read after trimming [50]"
    pcr_primers: "FASTA file of primers. The first perfect match found to a sequence in the primers file will be trimmed off the start of each read. This is run after trimmomatic (if --trimmomatic used)"
    max_insert: "Maximum insert size (includes read length). Reads with inferred insert size more than the maximum will not be used to extend contigs [800]"
    threads: "Number of threads to use [1]"
    kmc_one_thread: "Force kmc to use one thread. By default the value of -t/--threads is used when running kmc"
    strand_bias: "in [0,0.5] Set strand bias cutoff of mapped reads when trimming contig ends, in the interval [0,0.5]. A value of x means that a base needs min(fwd_depth, rev_depth) / total_depth <= x. The only time this should be used is with libraries with overlapping reads (ie fragment length < 2*read length), and even then, it can make results worse. If used, try a low value like 0.1 first [0]"
    test: "Run using built in test data. All other options will be ignored, except the mandatory output directory, and --trimmomatic and --threads can be also be used"
  }
}