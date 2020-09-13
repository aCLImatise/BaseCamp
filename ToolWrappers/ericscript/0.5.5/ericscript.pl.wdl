version 1.0

task Ericscriptpl {
  input {
    Boolean? man
    Boolean? verbose
    String? sample_name
    String? output_folder
    String? db_folder
    Int? min_reads
    Int? n_threads
    Int? n_trim
    Int? minimum_value_consider
    Boolean? remove_temporary_files
    Boolean? demo
    Boolean? genome_reference_identification
    Boolean? bwa_aln
    Boolean? check_db
    Boolean? down_db
    Boolean? simulator
    Boolean? calc_stats
    Boolean? print_db
    Boolean? ens_version
    Int? read_length
    Boolean? in_size
    Boolean? sd_in_size
    Boolean? n_gene_fusion
    Boolean? min_cov
    Boolean? max_cov
    Boolean? n_sims
    Boolean? be
    Boolean? ie
    Boolean? background_one
    Boolean? background_two
    Boolean? n_reads_background
    File? results_folder
    File? data_folder
    String? algo_name
    String? dataset
    Int? norm_roc
    String calculate
    String check
    String download
    String optional
    String subcommands
    String var_41
    String? arguments
    String minimum
    String on
    String var_45
    String see
    String trim
    String bwa
    String pe
    String all
    String available
    String var_if
    String simulated
    String the
    String value
    String aln
    String of
    String reads
    String var_59
    String statistics
    String temporary
    String your
    String database
    String from
    String? homo_sapiens
    String instead
    String mapping
    String that
    Int on_est
    String is
    String quality
    String we
    String base
    String up_to_date
    String used
    String mem
    String consider
    String in
    String to
    String discordant
    String our
    String paper
    String reads_dot
    String search
    String var_85
    String var_86
    String var_87
    String evaluate
    Int zero
    String performance
    String var_91
    String a
    String negative
  }
  command <<<
    ericscript_pl \
      ~{calculate} \
      ~{check} \
      ~{download} \
      ~{optional} \
      ~{subcommands} \
      ~{var_41} \
      ~{arguments} \
      ~{minimum} \
      ~{on} \
      ~{var_45} \
      ~{see} \
      ~{trim} \
      ~{bwa} \
      ~{pe} \
      ~{all} \
      ~{available} \
      ~{var_if} \
      ~{simulated} \
      ~{the} \
      ~{value} \
      ~{aln} \
      ~{of} \
      ~{reads} \
      ~{var_59} \
      ~{statistics} \
      ~{temporary} \
      ~{your} \
      ~{database} \
      ~{from} \
      ~{homo_sapiens} \
      ~{instead} \
      ~{mapping} \
      ~{that} \
      ~{on_est} \
      ~{is} \
      ~{quality} \
      ~{we} \
      ~{base} \
      ~{up_to_date} \
      ~{used} \
      ~{mem} \
      ~{consider} \
      ~{in} \
      ~{to} \
      ~{discordant} \
      ~{our} \
      ~{paper} \
      ~{reads_dot} \
      ~{search} \
      ~{var_85} \
      ~{var_86} \
      ~{var_87} \
      ~{evaluate} \
      ~{zero} \
      ~{performance} \
      ~{var_91} \
      ~{a} \
      ~{negative} \
      ~{if (man) then "--man" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sample_name) then ("--samplename " +  '"' + sample_name + '"') else ""} \
      ~{if defined(output_folder) then ("--outputfolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(db_folder) then ("--dbfolder " +  '"' + db_folder + '"') else ""} \
      ~{if defined(min_reads) then ("--minreads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(n_trim) then ("-ntrim " +  '"' + n_trim + '"') else ""} \
      ~{if defined(minimum_value_consider) then ("--MAPQ " +  '"' + minimum_value_consider + '"') else ""} \
      ~{if (remove_temporary_files) then "--remove" else ""} \
      ~{if (demo) then "--demo" else ""} \
      ~{if (genome_reference_identification) then "--refid" else ""} \
      ~{if (bwa_aln) then "--bwa_aln" else ""} \
      ~{if (check_db) then "--checkdb" else ""} \
      ~{if (down_db) then "--downdb" else ""} \
      ~{if (simulator) then "--simulator" else ""} \
      ~{if (calc_stats) then "--calcstats" else ""} \
      ~{if (print_db) then "--printdb" else ""} \
      ~{if (ens_version) then "--ensversion" else ""} \
      ~{if defined(read_length) then ("--readlength " +  '"' + read_length + '"') else ""} \
      ~{if (in_size) then "--insize" else ""} \
      ~{if (sd_in_size) then "--sd_insize" else ""} \
      ~{if (n_gene_fusion) then "--ngenefusion" else ""} \
      ~{if (min_cov) then "--min_cov" else ""} \
      ~{if (max_cov) then "--max_cov" else ""} \
      ~{if (n_sims) then "--nsims" else ""} \
      ~{if (be) then "--be" else ""} \
      ~{if (ie) then "--ie" else ""} \
      ~{if (background_one) then "--background_1" else ""} \
      ~{if (background_two) then "--background_2" else ""} \
      ~{if (n_reads_background) then "--nreads_background" else ""} \
      ~{if defined(results_folder) then ("--resultsfolder " +  '"' + results_folder + '"') else ""} \
      ~{if defined(data_folder) then ("--datafolder " +  '"' + data_folder + '"') else ""} \
      ~{if defined(algo_name) then ("--algoname " +  '"' + algo_name + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(norm_roc) then ("--normroc " +  '"' + norm_roc + '"') else ""}
  >>>
  parameter_meta {
    man: "print complete documentation"
    verbose: "use verbose output"
    sample_name: "what's the name of your sample?"
    output_folder: "where the results will be stored"
    db_folder: "where database is stored. Default is ERICSCRIPT_FOLDER/lib/"
    min_reads: "minimum reads to consider discordant alignments [3]"
    n_threads: "number of threads for the bwa aln process [4]"
    n_trim: "trim PE reads from 1st base to $ntrim. Default is no trimming. Set ntrim=0 to don't trim reads."
    minimum_value_consider: "minimum value of mapping quality to consider discordant reads. For MAPQ 0 use a negative value [20]"
    remove_temporary_files: "remove all temporary files."
    demo: "Run a demonstration of EricScript on simulated reads."
    genome_reference_identification: "Genome reference identification. Run ericscript.pl --printdb to see available refid [homo_sapiens]."
    bwa_aln: "Use BWA ALN instead of BWA MEM to search for discordant reads."
    check_db: "Check if your database is up-to-date, based on the latest Ensembl release."
    down_db: "Download, build database. refid parameter need to be specified."
    simulator: "Generate synthetic gene fusions with the same recipe of the ericscript's paper"
    calc_stats: "Calculate the statistics that we used in our paper to evaluate the performance of the algorithms."
    print_db: "Print a list of available genomes and exit."
    ens_version: "Download data of a specific Ensembl version (>= 70). Default is the latest one."
    read_length: "length of synthetic reads [75]"
    in_size: "parameter of wgsym. Outer distance between the two ends [200]"
    sd_in_size: "parameter of wgsym. Standard deviation [50]"
    n_gene_fusion: "The number of synthetic gene fusions per dataset? [50]"
    min_cov: "Minimum coverage to simulate [1]"
    max_cov: "Maximum coverage to simulate [50]"
    n_sims: "The number of synthetic datasets to simulate [10]"
    be: "Use --be to generate Broken Exons (BE) data [no]"
    ie: "Use --ie to generate Intact Exons (IE) data [yes]"
    background_one: "Fastq file (forward)  for generating background reads."
    background_two: "Fastq file (reverse) for generating background reads."
    n_reads_background: "The number of reads to extract from background data [200e3]."
    results_folder: "path to folder containing algorithm results."
    data_folder: "path to folder containing synthetic data generated by ericscript simulator."
    algo_name: "name of the algorithm that generated results."
    dataset: "type of synthetic data to considered for calculating statistics. IE or BE?"
    norm_roc: "factor to normalize the score given by the algorithm."
    calculate: ""
    check: ""
    download: ""
    optional: ""
    subcommands: ""
    var_41: ""
    arguments: ""
    minimum: ""
    on: ""
    var_45: ""
    see: ""
    trim: ""
    bwa: ""
    pe: ""
    all: ""
    available: ""
    var_if: ""
    simulated: ""
    the: ""
    value: ""
    aln: ""
    of: ""
    reads: ""
    var_59: ""
    statistics: ""
    temporary: ""
    your: ""
    database: ""
    from: ""
    homo_sapiens: ""
    instead: ""
    mapping: ""
    that: ""
    on_est: ""
    is: ""
    quality: ""
    we: ""
    base: ""
    up_to_date: ""
    used: ""
    mem: ""
    consider: ""
    in: ""
    to: ""
    discordant: ""
    our: ""
    paper: ""
    reads_dot: ""
    search: ""
    var_85: ""
    var_86: ""
    var_87: ""
    evaluate: ""
    zero: ""
    performance: ""
    var_91: ""
    a: ""
    negative: ""
  }
  output {
    File out_stdout = stdout()
  }
}