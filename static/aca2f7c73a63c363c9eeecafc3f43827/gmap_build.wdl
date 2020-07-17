version 1.0

task GmapBuild {
  input {
    Int? km_er
    Int? sampling_interval_genomoe
    String? sort
    Boolean? gunzip
    String? fast_a_pipe
    Boolean? fast_q
    Boolean? rev_comp
    Int? wait_sleep_seconds
    String? circular
    String? alt_scaffold
    Int? n_messages
    String? md_flag
    Boolean? contigs_are_mapped
    String? transcriptome_db
    File? transcripts
    Int? n_threads
    String? d
    String? options_dot_dot_dot
    String genome_fast_a_files
  }
  command <<<
    gmap_build \
      ~{options_dot_dot_dot} \
      ~{genome_fast_a_files} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling_interval_genomoe) then ("-q " +  '"' + sampling_interval_genomoe + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{true="--gunzip" false="" gunzip} \
      ~{if defined(fast_a_pipe) then ("--fasta-pipe " +  '"' + fast_a_pipe + '"') else ""} \
      ~{true="--fastq" false="" fast_q} \
      ~{true="--revcomp" false="" rev_comp} \
      ~{if defined(wait_sleep_seconds) then ("-w " +  '"' + wait_sleep_seconds + '"') else ""} \
      ~{if defined(circular) then ("--circular " +  '"' + circular + '"') else ""} \
      ~{if defined(alt_scaffold) then ("--altscaffold " +  '"' + alt_scaffold + '"') else ""} \
      ~{if defined(n_messages) then ("--nmessages " +  '"' + n_messages + '"') else ""} \
      ~{if defined(md_flag) then ("--mdflag " +  '"' + md_flag + '"') else ""} \
      ~{true="--contigs-are-mapped" false="" contigs_are_mapped} \
      ~{if defined(transcriptome_db) then ("--transcriptomedb " +  '"' + transcriptome_db + '"') else ""} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    km_er: "k-mer value for genomic index (allowed: 15 or less, default is 15)"
    sampling_interval_genomoe: "sampling interval for genomoe (allowed: 1-3, default 3)"
    sort: "Sort chromosomes using given method: none - use chromosomes as found in FASTA file(s) (default) alpha - sort chromosomes alphabetically (chr10 before chr 1) numeric-alpha - chr1, chr1U, chr2, chrM, chrU, chrX, chrY chrom - chr1, chr2, chrM, chrX, chrY, chr1U, chrU names - sort chromosomes based on file provided to --names flag"
    gunzip: "Files are gzipped, so need to gunzip each file first"
    fast_a_pipe: "Interpret argument as a command, instead of a list of FASTA files"
    fast_q: "Files are in FASTQ format"
    rev_comp: "Reverse complement all contigs"
    wait_sleep_seconds: "Wait (sleep) this many seconds after each step (default 2)"
    circular: "Circular chromosomes (either a list of chromosomes separated by a comma, or a filename containing circular chromosomes, one per line).  If you use the --names feature, then you should use the original name of the chromosome, not the substitute name, for this option."
    alt_scaffold: "File with alt scaffold info, listing alternate scaffolds, one per line, tab-delimited, with the following fields: (1) alt_scaf_acc, (2) parent_name, (3) orientation, (4) alt_scaf_start, (5) alt_scaf_stop, (6) parent_start, (7) parent_end."
    n_messages: "Maximum number of messages (warnings, contig reports) to report (default 50)"
    md_flag: "Use MD file from NCBI for mapping contigs to chromosomal coordinates"
    contigs_are_mapped: "Find a chromosomal region in each FASTA header line. Useful for contigs that have been mapped to chromosomal coordinates.  Ignored if the --mdflag is provided."
    transcriptome_db: "Transcriptome name"
    transcripts: "FASTA file containing transcripts (required if specifying --transcriptomedb)"
    n_threads: "Number of threads for GMAP alignment of transcripts to genome (default 8)"
    d: ""
    options_dot_dot_dot: ""
    genome_fast_a_files: ""
  }
}