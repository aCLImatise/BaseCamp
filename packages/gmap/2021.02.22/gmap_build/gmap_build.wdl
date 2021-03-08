version 1.0

task GmapBuild {
  input {
    Directory? dir
    String? genome_db
    File? names
    Boolean? limit_to_names
    Int? km_er
    Int? sampling_interval_genomoe
    File? sort
    Boolean? gunzip
    String? fast_a_pipe
    Boolean? fast_q
    Boolean? rev_comp
    Int? sleep_many_seconds
    File? circular
    File? alt_scaffold
    Int? n_messages
    File? md_flag
    Boolean? contigs_are_mapped
    String? transcriptome_db
    File? transcripts
    Int? n_threads
    String? options_dot_dot_dot
    String genome_fast_a_files
  }
  command <<<
    gmap_build \
      ~{options_dot_dot_dot} \
      ~{genome_fast_a_files} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(genome_db) then ("--genomedb " +  '"' + genome_db + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if (limit_to_names) then "--limit-to-names" else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling_interval_genomoe) then ("-q " +  '"' + sampling_interval_genomoe + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if (gunzip) then "--gunzip" else ""} \
      ~{if defined(fast_a_pipe) then ("--fasta-pipe " +  '"' + fast_a_pipe + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(sleep_many_seconds) then ("-w " +  '"' + sleep_many_seconds + '"') else ""} \
      ~{if defined(circular) then ("--circular " +  '"' + circular + '"') else ""} \
      ~{if defined(alt_scaffold) then ("--altscaffold " +  '"' + alt_scaffold + '"') else ""} \
      ~{if defined(n_messages) then ("--nmessages " +  '"' + n_messages + '"') else ""} \
      ~{if defined(md_flag) then ("--mdflag " +  '"' + md_flag + '"') else ""} \
      ~{if (contigs_are_mapped) then "--contigs-are-mapped" else ""} \
      ~{if defined(transcriptome_db) then ("--transcriptomedb " +  '"' + transcriptome_db + '"') else ""} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0"
  }
  parameter_meta {
    dir: "Destination directory for installation (defaults to gmapdb\\ndirectory specified at configure time)"
    genome_db: "Genome name (required)"
    names: "Substitute names for contigs, provided in a file.\\nThe file can have two formats:\\n1.  A file with one column per line, with each line\\ncorresponding to a FASTA file, in the order given to\\ngmap_build.  The chromosome name for each FASTA file will\\nbe replaced with the desired chromosome name in the file.\\nEvery chromosome in the FASTA must have a corresponding line\\nin the file.  This is useful if you want to rename chromosomes\\nwith a systematic numbering pattern.\\n2.  A file with two columns per line, separated by white\\nspace.  In each line, the original FASTA chromosome name\\nshould be in column 1 and the desired chromosome name\\nwill be in column 2.\\nThe meaning of file format 2 depends on whether\\n--limit-to-names is specified.  If so, the genome build will\\nbe limited to those chromosomes in this file.  Otherwise,\\nall chromosomes in the FASTA file will be included,\\nbut only those chromosomes in this file will be re-named, which\\nprovides an easy way to change just a few chromosome names.\\nThis file can be combined with the --sort=names option, in\\nwhich the order of chromosomes is that given in the file.  In\\nthis case, every chromosome must be listed in the file, and\\nfor chromosome names that should not be changed, column 2 can\\nbe blank (or the same as column 1).  The option of a blank\\ncolumn 2 is allowed only when specifying --sort=names,\\nbecause otherwise, the program cannot distinguish between a\\n1-column and 2-column names file."
    limit_to_names: "Determines whether to limit the genome build to the lines listed\\nin the --names file.  You can limit a genome build to certain\\nchromosomes with this option, plus a --names file that either\\nrenames chromosomes, or lists the same names in both columns for\\nthe desired chromosomes."
    km_er: "k-mer value for genomic index (allowed: 15 or less, default is 15)"
    sampling_interval_genomoe: "sampling interval for genomoe (allowed: 1-3, default 3)"
    sort: "Sort chromosomes using given method:\\nnone - use chromosomes as found in FASTA file(s) (default)\\nalpha - sort chromosomes alphabetically (chr10 before chr 1)\\nnumeric-alpha - chr1, chr1U, chr2, chrM, chrU, chrX, chrY\\nchrom - chr1, chr2, chrM, chrX, chrY, chr1U, chrU\\nnames - sort chromosomes based on file provided to --names flag"
    gunzip: "Files are gzipped, so need to gunzip each file first"
    fast_a_pipe: "Interpret argument as a command, instead of a list of FASTA files"
    fast_q: "Files are in FASTQ format"
    rev_comp: "Reverse complement all contigs"
    sleep_many_seconds: "Wait (sleep) this many seconds after each step (default 2)"
    circular: "Circular chromosomes (either a list of chromosomes separated\\nby a comma, or a filename containing circular chromosomes,\\none per line).  If you use the --names feature, then you\\nshould use the substitute name of the chromosome, not the\\noriginal name, for this option.  (NOTE: This behavior is different\\nfrom previous versions, and starts with version 2020-10-20.)"
    alt_scaffold: "File with alt scaffold info, listing alternate scaffolds,\\none per line, tab-delimited, with the following fields:\\n(1) alt_scaf_acc, (2) parent_name, (3) orientation,\\n(4) alt_scaf_start, (5) alt_scaf_stop, (6) parent_start, (7) parent_end."
    n_messages: "Maximum number of messages (warnings, contig reports) to report (default 50)"
    md_flag: "Use MD file from NCBI for mapping contigs to\\nchromosomal coordinates"
    contigs_are_mapped: "Find a chromosomal region in each FASTA header line.\\nUseful for contigs that have been mapped\\nto chromosomal coordinates.  Ignored if the --mdflag is provided."
    transcriptome_db: "Transcriptome name"
    transcripts: "FASTA file containing transcripts (required if specifying"
    n_threads: "Number of threads for GMAP alignment of transcripts to genome\\n(default 8)\\n"
    options_dot_dot_dot: ""
    genome_fast_a_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}