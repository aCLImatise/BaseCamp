version 1.0

task BismarkMethylationExtractor {
  input {
    String? comprehensive
    Boolean? single_end
    Boolean? paired_end
    Boolean? no_overlap
    Boolean? include_overlap
    Int? ignore
    Int? ignore_r_two
    Int? ignore_three_prime
    Int? ignore_three_prime_r_two
    Boolean? merge_non_cpg
    Boolean? no_header
    File? allows_specification_specified
    Boolean? sam_tools_path
    Boolean? gzip
    File? m_bias_only
    File? m_bias_off
    Int? parallel
    File? yacht
    File? bed_graph
    File? zero_based
    Boolean? cut_off
    Boolean? remove_spaces
    File? cx_context
    Int? buffer_size
    Boolean? scaffolds
    Boolean? ample_memory
    File? ucsc
    Directory? cytosine_report
    File? genome_folder
    Boolean? split_by_chromosome
    String ot
    String c_tot
    String ob
    String cto_b
  }
  command <<<
    bismark_methylation_extractor \
      ~{ot} \
      ~{c_tot} \
      ~{ob} \
      ~{cto_b} \
      ~{if defined(comprehensive) then ("--comprehensive " +  '"' + comprehensive + '"') else ""} \
      ~{if (single_end) then "--single-end" else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (no_overlap) then "--no_overlap" else ""} \
      ~{if (include_overlap) then "--include_overlap" else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(ignore_r_two) then ("--ignore_r2 " +  '"' + ignore_r_two + '"') else ""} \
      ~{if defined(ignore_three_prime) then ("--ignore_3prime " +  '"' + ignore_three_prime + '"') else ""} \
      ~{if defined(ignore_three_prime_r_two) then ("--ignore_3prime_r2 " +  '"' + ignore_three_prime_r_two + '"') else ""} \
      ~{if (merge_non_cpg) then "--merge_non_CpG" else ""} \
      ~{if (no_header) then "--no_header" else ""} \
      ~{if defined(allows_specification_specified) then ("--output " +  '"' + allows_specification_specified + '"') else ""} \
      ~{if (sam_tools_path) then "--samtools_path" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (m_bias_only) then "--mbias_only" else ""} \
      ~{if (m_bias_off) then "--mbias_off" else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if (yacht) then "--yacht" else ""} \
      ~{if (bed_graph) then "--bedGraph" else ""} \
      ~{if (zero_based) then "--zero_based" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (remove_spaces) then "--remove_spaces" else ""} \
      ~{if (cx_context) then "--CX_context" else ""} \
      ~{if defined(buffer_size) then ("--buffer_size " +  '"' + buffer_size + '"') else ""} \
      ~{if (scaffolds) then "--scaffolds" else ""} \
      ~{if (ample_memory) then "--ample_memory" else ""} \
      ~{if (ucsc) then "--ucsc" else ""} \
      ~{if (cytosine_report) then "--cytosine_report" else ""} \
      ~{if defined(genome_folder) then ("--genome_folder " +  '"' + genome_folder + '"') else ""} \
      ~{if (split_by_chromosome) then "--split_by_chromosome" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  parameter_meta {
    comprehensive: "specified, see below). The output files can be imported into a genome"
    single_end: "Input file(s) are Bismark result file(s) generated from single-end\\nread data. If neither -s nor -p is set the type of experiment will\\nbe determined automatically."
    paired_end: "Input file(s) are Bismark result file(s) generated from paired-end\\nread data. If neither -s nor -p is set the type of experiment will\\nbe determined automatically."
    no_overlap: "For paired-end reads it is theoretically possible that read_1 and\\nread_2 overlap. This option avoids scoring overlapping methylation\\ncalls twice (only methylation calls of read 1 are used for in the process\\nsince read 1 has historically higher quality basecalls than read 2).\\nWhilst this option removes a bias towards more methylation calls\\nin the center of sequenced fragments it may de facto remove a sizable\\nproportion of the data. This option is on by default for paired-end data\\nbut can be disabled using --include_overlap. Default: ON."
    include_overlap: "For paired-end data all methylation calls will be extracted irrespective of\\nof whether they overlap or not. Default: OFF."
    ignore: "Ignore the first <int> bp from the 5' end of Read 1 (or single-end alignment\\nfiles) when processing the methylation call string. This can remove e.g. a\\nrestriction enzyme site at the start of each read or any other source of\\nbias (such as PBAT-Seq data)."
    ignore_r_two: "Ignore the first <int> bp from the 5' end of Read 2 of paired-end sequencing\\nresults only. Since the first couple of bases in Read 2 of BS-Seq experiments\\nshow a severe bias towards non-methylation as a result of end-repairing\\nsonicated fragments with unmethylated cytosines (see M-bias plot), it is\\nrecommended that the first couple of bp of Read 2 are removed before\\nstarting downstream analysis. Please see the section on M-bias plots in the\\nBismark User Guide for more details."
    ignore_three_prime: "Ignore the last <int> bp from the 3' end of Read 1 (or single-end alignment\\nfiles) when processing the methylation call string. This can remove unwanted\\nbiases from the end of reads."
    ignore_three_prime_r_two: "Ignore the last <int> bp from the 3' end of Read 2 of paired-end sequencing\\nresults only. This can remove unwanted biases from the end of reads."
    merge_non_cpg: "This will produce two output files (in --comprehensive mode) or eight\\nstrand-specific output files (default) for Cs in\\n- CpG context\\n- non-CpG context"
    no_header: "Suppresses the Bismark version header line in all output files for more convenient\\nbatch processing."
    allows_specification_specified: "Allows specification of a different output directory (absolute or relative\\npath). If not specified explicitly, the output will be written to the current directory."
    sam_tools_path: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to be specified\\nexplicitly if Samtools is in the PATH already."
    gzip: "The methylation extractor files (CpG_OT_..., CpG_OB_... etc) will be written out in\\na GZIP compressed form to save disk space. This option is also passed on to the genome-wide\\ncytosine report. BedGraph and coverage files will be written out as .gz by default."
    m_bias_only: "The methylation extractor will read the entire file but only output the M-bias table and plots as\\nwell as a report (optional) and then quit. Default: OFF."
    m_bias_off: "The methylation extractor will process the entire file as usual but doesn't write out any M-bias report.\\nOnly recommended for users who deliberately want to keep an earlier version of the M-bias report.\\nDefault: OFF."
    parallel: "May also be --multicore <int>. Sets the number of cores to be used for the methylation extraction process.\\nIf system resources are plentiful this is a viable option to speed up the extraction process (we observed a\\nnear linear speed increase for up to 10 cores used). Please note that a typical process of extracting a BAM file\\nand writing out '.gz' output streams will in fact use ~3 cores per value of --parallel <int>\\nspecified (1 for the methylation extractor itself, 1 for a Samtools stream, 1 for GZIP stream), so\\n--parallel 10 is likely to use around 30 cores of system resources. This option has no bearing\\non the bismark2bedGraph or genome-wide cytosine report processes."
    yacht: "This option (Yet Another Context Hunting Tool) writes out additional information about the read a methylation\\ncall belongs to, and its output is meant to be fed into the NOMe_filtering script. This option writes out\\na single 'any_C_context' file that contains all methylation calls for a read consecutively. Its intended use\\nis single-cell NOMe-Seq data, and thus this option works only in single-end mode (paired-end reads often suffer\\nfrom chimaera problems...)\\n--yacht will add three additional columns to the standard methylation call files:\\n<read start>  <read end>  <read orientation>\\nFor forward reads (+ orientation) the start position is the left-most position wheras for reverse reads\\n(- orientation) it is the rightmost position."
    bed_graph: "After finishing the methylation extraction, the methylation output is written into a\\nsorted bedGraph file that reports the position of a given cytosine and its methylation\\nstate (in %, see details below). The methylation extractor output is temporarily split up into\\ntemporary files, one per chromosome (written into the current directory or folder\\nspecified with -o/--output); these temp files are then used for sorting and deleted\\nafterwards. By default, only cytosines in CpG context will be sorted. The option\\n'--CX_context' may be used to report all cytosines irrespective of sequence context\\n(this will take MUCH longer!). The default folder for temporary files during the sorting\\nprocess is the output directory. The bedGraph conversion step is performed by the external\\nmodule 'bismark2bedGraph'; this script needs to reside in the same folder as the\\nbismark_methylation_extractor itself."
    zero_based: "Write out an additional coverage file (ending in .zero.cov) that uses 0-based genomic start\\nand 1-based genomic end coordinates (zero-based, half-open), like used in the bedGraph file,\\ninstead of using 1-based coordinates throughout. Default: OFF."
    cut_off: "[threshold]     The minimum number of times any methylation state (methylated or unmethylated) has to be seen\\nfor a nucleotide before its methylation percentage is reported. Default: 1."
    remove_spaces: "Replaces whitespaces in the sequence ID field with underscores to allow sorting."
    cx_context: "The sorted bedGraph output file contains information on every single cytosine that was covered\\nin the experiment irrespective of its sequence context. This applies to both forward and\\nreverse strands. Please be aware that this option may generate large temporary and output files\\nand may take a long time to sort (up to many hours). Default: OFF.\\n(i.e. Default = CpG context only)."
    buffer_size: "This allows you to specify the main memory sort buffer when sorting the methylation information.\\nEither specify a percentage of physical memory by appending % (e.g. --buffer_size 50%) or\\na multiple of 1024 bytes, e.g. 'K' multiplies by 1024, 'M' by 1048576 and so on for 'T' etc.\\n(e.g. --buffer_size 20G). For more information on sort type 'info sort' on a command line.\\nDefaults to 2G."
    scaffolds: "Users working with unfinished genomes sporting tens or even hundreds of thousands of\\nscaffolds/contigs/chromosomes frequently encountered errors with pre-sorting reads to\\nindividual chromosome files. These errors were caused by the operating system's limit\\nof the number of filehandle that can be written to at any one time (typically 1024; to\\nfind out this limit on Linux, type: ulimit -a).\\nTo bypass the limitation of open filehandles, the option --scaffolds does not pre-sort\\nmethylation calls into individual chromosome files. Instead, all input files are\\ntemporarily merged into a single file (unless there is only a single file), and this\\nfile will then be sorted by both chromosome AND position using the Unix sort command.\\nPlease be aware that this option might take a looooong time to complete, depending on\\nthe size of the input files, and the memory you allocate to this process (see --buffer_size).\\nNevertheless, it seems to be working."
    ample_memory: "Using this option will not sort chromosomal positions using the UNIX 'sort' command, but will\\ninstead use two arrays to sort methylated and unmethylated calls. This may result in a faster\\nsorting process of very large files, but this comes at the cost of a larger memory footprint\\n(two arrays of the length of the largest human chromosome 1 (~250M bp) consume around 16GB\\nof RAM). Due to overheads in creating and looping through these arrays it seems that it will\\nactually be *slower* for small files (few million alignments), and we are currently testing at\\nwhich point it is advisable to use this option. Note that --ample_memory is not compatible\\nwith options '--scaffolds/--gazillion' (as it requires pre-sorted files to begin with)."
    ucsc: "Writes out an additional bedGraph file (ending in '_UCSC.bedGraph.gz') that is compatible with the\\nUCSC genome browser. If alignments were carried out against an Ensembl version of the genome, this\\nstep will prefix chromosome names with 'chr', and rename the mitochondrial chromosome from 'MT' to\\n'chrM'. In addition, this wite out a tab delimited file ending in '.chromosome_sizes.txt' to enable\\ntools such as bedGraphToBigWig."
    cytosine_report: "After the conversion to bedGraph has completed, the option '--cytosine_report' produces a\\ngenome-wide methylation report for all cytosines in the genome. By default, the output uses 1-based\\nchromosome coordinates (zero-based start coords are optional) and reports CpG context only (all\\ncytosine context is optional). The output considers all Cs on both forward and reverse strands and\\nreports their position, strand, trinucleotide content and methylation state (counts are 0 if not\\ncovered). The cytosine report conversion step is performed by the external module\\n'coverage2cytosine'; this script needs to reside in the same folder as the bismark_methylation_extractor\\nitself."
    genome_folder: "Enter the genome folder you wish to use to extract sequences from (full path only). Accepted\\nformats are FastA files ending with '.fa' or '.fasta'. Specifying a genome folder path is mandatory."
    split_by_chromosome: "Writes the output into individual files for each chromosome instead of a single output file. Files\\nwill be named to include the input filename and the chromosome number."
    ot: "original top strand"
    c_tot: "complementary to original top strand"
    ob: "original bottom strand"
    cto_b: "complementary to original bottom strand"
  }
  output {
    File out_stdout = stdout()
    File out_allows_specification_specified = "${in_allows_specification_specified}"
    File out_m_bias_only = "${in_m_bias_only}"
    File out_m_bias_off = "${in_m_bias_off}"
    File out_yacht = "${in_yacht}"
    File out_bed_graph = "${in_bed_graph}"
    File out_zero_based = "${in_zero_based}"
    File out_cx_context = "${in_cx_context}"
    File out_ucsc = "${in_ucsc}"
    Directory out_cytosine_report = "${in_cytosine_report}"
  }
}