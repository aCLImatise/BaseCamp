version 1.0

task Bismark {
  input {
    Int? commaseparated_list_bismark
    Int? commaseparated_list_files
    File? single_end
    Boolean? fast_q
    Boolean? fast_a
    Int? skip
    Int? up_to
    Boolean? phred_three_three_quals
    Boolean? phred_six_four_quals
    Boolean? path_to_bowtie_two
    Boolean? path_to_his_at_two
    Int? sets_number_allowed
    Int? sets_length_align
    Boolean? ignore_quals
    Int? mini_ns
    Int? max_ins
    Int? parallel
    Boolean? local
    Boolean? non_directional
    Boolean? pb_at
    Boolean? sam_no_hd
    File? rg_tag
    String? rg_id
    String? rg_sample
    Boolean? unmapped
    Boolean? ambiguous
    File? output_dir
    File? temp_dir
    Boolean? non_bs_mm
    Boolean? gzip
    Boolean? sam
    File? bam
    File? cram
    File? cram_ref
    Boolean? sam_tools_path
    File? prefix
    File? basename
    Boolean? old_flag
    File? am_big_bam
    Boolean? nucleotide_coverage
    Boolean? icpc
    Boolean? bowtie_two
    Boolean? no_dovetail
    Boolean? his_at_two
    Boolean? no_spliced_alignment
    File? known_splice_site_in_file
    Boolean? no_mixed
    Boolean? no_discordant
    Int? int_consecutive_seed
    Int? int_maximum_number
    File? launch_nthreads_parallel
    Int? score_min
    Int? rdg
    Int? rfg
    String genome_folder
  }
  command <<<
    bismark \
      ~{genome_folder} \
      ~{if defined(commaseparated_list_bismark) then ("-1 " +  '"' + commaseparated_list_bismark + '"') else ""} \
      ~{if defined(commaseparated_list_files) then ("-2 " +  '"' + commaseparated_list_files + '"') else ""} \
      ~{if defined(single_end) then ("--single_end " +  '"' + single_end + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(up_to) then ("--upto " +  '"' + up_to + '"') else ""} \
      ~{if (phred_three_three_quals) then "--phred33-quals" else ""} \
      ~{if (phred_six_four_quals) then "--phred64-quals" else ""} \
      ~{if (path_to_bowtie_two) then "--path_to_bowtie2" else ""} \
      ~{if (path_to_his_at_two) then "--path_to_hisat2" else ""} \
      ~{if defined(sets_number_allowed) then ("-N " +  '"' + sets_number_allowed + '"') else ""} \
      ~{if defined(sets_length_align) then ("-L " +  '"' + sets_length_align + '"') else ""} \
      ~{if (ignore_quals) then "--ignore-quals" else ""} \
      ~{if defined(mini_ns) then ("--minins " +  '"' + mini_ns + '"') else ""} \
      ~{if defined(max_ins) then ("--maxins " +  '"' + max_ins + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (non_directional) then "--non_directional" else ""} \
      ~{if (pb_at) then "--pbat" else ""} \
      ~{if (sam_no_hd) then "--sam-no-hd" else ""} \
      ~{if (rg_tag) then "--rg_tag" else ""} \
      ~{if defined(rg_id) then ("--rg_id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg_sample) then ("--rg_sample " +  '"' + rg_sample + '"') else ""} \
      ~{if (unmapped) then "--unmapped" else ""} \
      ~{if (ambiguous) then "--ambiguous" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if (non_bs_mm) then "--non_bs_mm" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (cram) then "--cram" else ""} \
      ~{if defined(cram_ref) then ("--cram_ref " +  '"' + cram_ref + '"') else ""} \
      ~{if (sam_tools_path) then "--samtools_path" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if (old_flag) then "--old_flag" else ""} \
      ~{if (am_big_bam) then "--ambig_bam" else ""} \
      ~{if (nucleotide_coverage) then "--nucleotide_coverage" else ""} \
      ~{if (icpc) then "--icpc" else ""} \
      ~{if (bowtie_two) then "--bowtie2" else ""} \
      ~{if (no_dovetail) then "--no_dovetail" else ""} \
      ~{if (his_at_two) then "--hisat2" else ""} \
      ~{if (no_spliced_alignment) then "--no-spliced-alignment" else ""} \
      ~{if defined(known_splice_site_in_file) then ("--known-splicesite-infile " +  '"' + known_splice_site_in_file + '"') else ""} \
      ~{if (no_mixed) then "--no-mixed" else ""} \
      ~{if (no_discordant) then "--no-discordant" else ""} \
      ~{if defined(int_consecutive_seed) then ("-D " +  '"' + int_consecutive_seed + '"') else ""} \
      ~{if defined(int_maximum_number) then ("-R " +  '"' + int_maximum_number + '"') else ""} \
      ~{if defined(launch_nthreads_parallel) then ("-p " +  '"' + launch_nthreads_parallel + '"') else ""} \
      ~{if defined(score_min) then ("--score_min " +  '"' + score_min + '"') else ""} \
      ~{if defined(rdg) then ("--rdg " +  '"' + rdg + '"') else ""} \
      ~{if defined(rfg) then ("--rfg " +  '"' + rfg + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    commaseparated_list_bismark: "Comma-separated list of files containing the #1 mates (filename usually includes\\n\\\"_1\\\"), e.g. flyA_1.fq,flyB_1.fq). Sequences specified with this option must\\ncorrespond file-for-file and read-for-read with those specified in <mates2>.\\nReads may be a mix of different lengths. Bismark will produce one mapping result\\nand one report file per paired-end input file pair."
    commaseparated_list_files: "Comma-separated list of files containing the #2 mates (filename usually includes\\n\\\"_2\\\"), e.g. flyA_2.fq,flyB_2.fq). Sequences specified with this option must\\ncorrespond file-for-file and read-for-read with those specified in <mates1>.\\nReads may be a mix of different lengths."
    single_end: "Sets single-end mapping mode explicitly giving a list of file names as <list>.\\nThe filenames may be provided as a comma [,] or colon [:] separated list."
    fast_q: "The query input files (specified as <mate1>,<mate2> or <singles> are FASTQ\\nfiles (usually having extension .fg or .fastq). This is the default. See also\\n--solexa-quals."
    fast_a: "The query input files (specified as <mate1>,<mate2> or <singles> are FASTA\\nfiles (usually having extensions .fa, .mfa, .fna or similar). All quality values\\nare assumed to be 40 on the Phred scale. FASTA files are expected to contain both\\nthe read name and the sequence on a single line (and not spread over several lines)."
    skip: "Skip (i.e. do not align) the first <int> reads or read pairs from the input."
    up_to: "Only aligns the first <int> reads or read pairs from the input. Default: no limit."
    phred_three_three_quals: "FASTQ qualities are ASCII chars equal to the Phred quality plus 33. Default: ON."
    phred_six_four_quals: "FASTQ qualities are ASCII chars equal to the Phred quality plus 64. Default: off."
    path_to_bowtie_two: "The full path </../../> to the Bowtie 2 installation on your system. If not\\nspecified it is assumed that Bowtie 2 is in the PATH."
    path_to_his_at_two: "The full path </../../> to the HISAT2 installation on your system. If not\\nspecified it is assumed that HISAT2 is in the PATH."
    sets_number_allowed: "Sets the number of mismatches to allowed in a seed alignment during multiseed alignment.\\nCan be set to 0 or 1. Setting this higher makes alignment slower (often much slower)\\nbut increases sensitivity. Default: 0. This option is only available for Bowtie 2 (for\\nBowtie 1 see -n)."
    sets_length_align: "Sets the length of the seed substrings to align during multiseed alignment. Smaller values\\nmake alignment slower but more senstive. Default: the --sensitive preset of Bowtie 2 is\\nused by default, which sets -L to 20. maximum of L can be set to 32. The length of the seed\\nwould effect the alignment speed dramatically while the larger L, the faster the aligment.\\nThis option is only available for Bowtie 2 (for Bowtie 1 see -l)."
    ignore_quals: "When calculating a mismatch penalty, always consider the quality value at the mismatched\\nposition to be the highest possible, regardless of the actual value. I.e. input is treated\\nas though all quality values are high. This is also the default behavior when the input\\ndoesn't specify quality values (e.g. in -f mode). This option is invariable and on by default."
    mini_ns: "The minimum insert size for valid paired-end alignments. E.g. if -I 60 is specified and\\na paired-end alignment consists of two 20-bp alignments in the appropriate orientation\\nwith a 20-bp gap between them, that alignment is considered valid (as long as -X is also\\nsatisfied). A 19-bp gap would not be valid in that case. Default: 0."
    max_ins: "The maximum insert size for valid paired-end alignments. E.g. if -X 100 is specified and\\na paired-end alignment consists of two 20-bp alignments in the proper orientation with a\\n60-bp gap between them, that alignment is considered valid (as long as -I is also satisfied).\\nA 61-bp gap would not be valid in that case. Default: 500."
    parallel: "(May also be --multicore <int>) Sets the number of parallel instances of Bismark to be run concurrently.\\nThis forks the Bismark alignment step very early on so that each individual Spawn of Bismark processes\\nonly every n-th sequence (n being set by --parallel). Once all processes have completed,\\nthe individual BAM files, mapping reports, unmapped or ambiguous FastQ files are merged\\ninto single files in very much the same way as they would have been generated running Bismark\\nconventionally with only a single instance.\\nIf system resources are plentiful this is a viable option to speed up the alignment process\\n(we observed a near linear speed increase for up to --parallel 8 tested). However, please note\\nthat a typical Bismark run will use several cores already (Bismark itself, 2 or 4 threads of\\nBowtie2/HISAT2, Samtools, gzip etc...) and ~10-16GB of memory depending on the choice of aligner\\nand genome. WARNING: Bismark Parallel (BP?) is resource hungry! Each value of --parallel specified\\nwill effectively lead to a linear increase in compute and memory requirements, so --parallel 4 for\\ne.g. the GRCm38 mouse genome will probably use ~20 cores and eat ~40GB or RAM, but at the same time\\nreduce the alignment time to ~25-30%. You have been warned."
    local: "In this mode, it is not required that the entire read aligns from one end to the other. Rather, some\\ncharacters may be omitted (“soft-clipped”) from the ends in order to achieve the greatest possible\\nalignment score. For Bowtie 2, the match bonus --ma (default: 2) is used in this mode, and the best possible\\nalignment score is equal to the match bonus (--ma) times the length of the read. This is mutually exclusive with\\nend-to-end alignments. For HISAT2, it is currently not exactly known how the best alignment is calculated.\\nDEFAULT: OFF."
    non_directional: "The sequencing library was constructed in a non strand-specific manner, alignments to all four\\nbisulfite strands will be reported. Default: OFF.\\n(The current Illumina protocol for BS-Seq is directional, in which case the strands complementary\\nto the original strands are merely theoretical and should not exist in reality. Specifying directional\\nalignments (which is the default) will only run 2 alignment threads to the original top (OT)\\nor bottom (OB) strands in parallel and report these alignments. This is the recommended option\\nfor sprand-specific libraries)."
    pb_at: "This options may be used for PBAT-Seq libraries (Post-Bisulfite Adapter Tagging; Kobayashi et al.,\\nPLoS Genetics, 2012). This is essentially the exact opposite of alignments in 'directional' mode,\\nas it will only launch two alignment threads to the CTOT and CTOB strands instead of the normal OT\\nand OB ones. Use this option only if you are certain that your libraries were constructed following\\na PBAT protocol (if you don't know what PBAT-Seq is you should not specify this option). The option\\n--pbat works only for FastQ files (in both Bowtie and Bowtie 2 mode) and using uncompressed\\ntemporary files only)."
    sam_no_hd: "Suppress SAM header lines (starting with @). This might be useful when very large input files are\\nsplit up into several smaller files to run concurrently and the output files are to be merged."
    rg_tag: "Write out a Read Group tag to the resulting SAM/BAM file. This will write the following line to the\\nSAM header: @RG PL: ILLUMINA ID:SAMPLE SM:SAMPLE ; to set ID and SM see --rg_id and --rg_sample.\\nIn addition each read receives an RG:Z:RG-ID tag. Default: OFF."
    rg_id: "Sets the ID field in the @RG header line. The default is 'SAMPLE'."
    rg_sample: "Sets the SM field in the @RG header line; can't be set without setting --rg_id as well. The default is\\n'SAMPLE'."
    unmapped: "Write all reads that could not be aligned to a file in the output directory. Written reads will\\nappear as they did in the input, without any translation of quality values that may have\\ntaken place within Bowtie or Bismark. Paired-end reads will be written to two parallel files with _1\\nand _2 inserted in their filenames, i.e. _unmapped_reads_1.txt and unmapped_reads_2.txt. Reads\\nwith more than one valid alignment with the same number of lowest mismatches (ambiguous mapping)\\nare also written to _unmapped_reads.txt unless the option --ambiguous is specified as well."
    ambiguous: "Write all reads which produce more than one valid alignment with the same number of lowest\\nmismatches or other reads that fail to align uniquely to a file in the output directory.\\nWritten reads will appear as. they did in the input, without any of the translation of quality\\nvalues that may have taken place within Bowtie or Bismark. Paired-end reads will be written to two\\nparallel files with _1 and _2 inserted in their filenames, i.e. _ambiguous_reads_1.txt and\\n_ambiguous_reads_2.txt. These reads are not written to the file specified with --un."
    output_dir: "Write all output files into this directory. By default the output files will be written into\\nthe same folder as the input file(s). If the specified folder does not exist, Bismark will attempt\\nto create it first. The path to the output folder can be either relative or absolute."
    temp_dir: "Write temporary files to this directory instead of into the same directory as the input files. If\\nthe specified folder does not exist, Bismark will attempt to create it first. The path to the\\ntemporary folder can be either relative or absolute."
    non_bs_mm: "Optionally, outputs an extra column specifying the number of non-bisulfite mismatches a read has.\\nThis option is only available in end-to-end mode. The value is just the number of actual non-bisulfite\\nmismatches and ignores potential insertions or deletions.\\nThe format for single-end reads and read 1 of paired-end reads is 'XA:Z:number of mismatches'\\nand 'XB:Z:number of mismatches' for read 2 of paired-end reads."
    gzip: "Temporary bisulfite conversion files will be written out in a GZIP compressed form to save disk\\nspace. This option is available for most alignment modes but is not available for paired-end FastA\\nfiles. This option might be somewhat slower than writing out uncompressed files, but this awaits\\nfurther testing."
    sam: "The output will be written out in SAM format instead of the default BAM format. Be warned that this\\nrequires ~10 times more disk space. --sam is not compatible with the option --parallel."
    bam: "Bismark will attempt to use the path to Samtools that was specified with '--samtools_path', or, if it hasn't\\nbeen specified, attempt to find Samtools in the PATH. If no installation of Samtools can be found,\\nthe SAM output will be compressed with GZIP instead (yielding a .sam.gz output file). Default: ON."
    cram: "Writes the output to a CRAM file instead of BAM. This requires the use of Samtools 1.2 or higher."
    cram_ref: "CRAM output requires you to specify a reference genome as a single FastA file. If this single-FastA\\nreference file is not supplied explicitly it will be regenerated from the genome .fa sequence(s)\\nused for the Bismark run and written to a file called 'Bismark_genome_CRAM_reference.mfa' into the\\noputput directory."
    sam_tools_path: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to be specified\\nexplicitly if Samtools is in the PATH already."
    prefix: "Prefixes <prefix> to the output filenames. Trailing dots will be replaced by a single one. For\\nexample, '--prefix test' with 'file.fq' would result in the output file 'test.file.fq_bismark.sam' etc."
    basename: "Write all output to files starting with this base file name. For example, '--basename foo'\\nwould result in the files 'foo.bam' and 'foo_SE_report.txt' (or its paired-end equivalent). Takes\\nprecedence over --prefix. Be advised that you should not use this option in conjunction with supplying\\nlists of files to be processed consecutively, as all output files will constantly overwrite each other."
    old_flag: "Only in paired-end SAM mode, uses the FLAG values used by Bismark v0.8.2 and before. In addition,\\nthis options appends /1 and /2 to the read IDs for reads 1 and 2 relative to the input file. Since\\nboth the appended read IDs and custom FLAG values may cause problems with some downstream tools\\nsuch as Picard, new defaults were implemented as of version 0.8.3.\\ndefault                         old_flag\\n===================              ===================\\nRead 1       Read 2              Read 1       Read 2\\nOT:         99          147                  67          131\\nOB:         83          163                 115          179\\nCTOT:      147           99                  67          131\\nCTOB:      163           83                 115          179"
    am_big_bam: "For reads that have multiple alignments a random alignment is written out to a special file ending in\\n'.ambiguous.bam'. The alignments are in Bowtie2 format and do not any contain Bismark specific\\nentries such as the methylation call etc. These ambiguous BAM files are intended to be used as\\ncoverage estimators for variant callers."
    nucleotide_coverage: "Calculates the mono- and di-nucleotide sequence composition of covered positions in the analysed BAM\\nfile and compares it to the genomic average composition once alignments are complete by calling 'bam2nuc'.\\nSince this calculation may take a while, bam2nuc attempts to write the genomic sequence composition\\ninto a file called 'genomic_nucleotide_frequencies.txt' indside the reference genome folder so it can\\nbe re-used the next time round instead of calculating it once again. If a file 'nucleotide_stats.txt' is\\nfound with the Bismark reports it will be automatically detected and used for the Bismark HTML report.\\nThis option works only for BAM or CRAM files."
    icpc: "This option will truncate read IDs at the first space or tab it encounters, which are sometimes used to add\\ncomments to a FastQ entry (instead of replacing them with underscores (_) as is the default behaviour). The\\nopion is deliberately somewhat cryptic (\\\"I couldn't possibly comment\\\"), as it only becomes relevant when R1 and R2\\nof read pairs are mapped separately in single-end mode, and then re-paired afterwards (the SAM format dictates\\nthat R1 and R2 have the same read ID). Paired-end mapping already creates BAM files with identical read IDs.\\nFor more information please see here: https://github.com/FelixKrueger/Bismark/issues/236. Default: OFF."
    bowtie_two: "Default: ON. Uses Bowtie 2 as default aligner. Bismark limits Bowtie 2 to only perform end-to-end\\nalignments, i.e. searches for alignments involving all read characters (also called\\nuntrimmed or unclipped alignments). Bismark assumes that raw sequence data is adapter\\nand/or quality trimmed where appropriate. Both small (.bt2) and large (.bt2l) Bowtie 2\\nindexes are supported. To use HISAT2 instead of Bowtie 2 please see option --hisat2."
    no_dovetail: "It is possible, though unusual, for the mates to \\\"dovetail\\\", with the mates seemingly extending\\n\\\"past\\\" each other as in this example:\\nMate 1:                 GTCAGCTACGATATTGTTTGGGGTGACACATTACGC\\nMate 2:            TATGAGTCAGCTACGATATTGTTTGGGGTGACACAT\\nReference: GCAGATTATATGAGTCAGCTACGATATTGTTTGGGGTGACACATTACGCGTCTTTGAC\\nBy default, dovetailing is considered inconsistent with concordant alignment, but by default\\nBismark calls Bowtie 2 with --dovetail, causing it to consider dovetailing alignments as\\nconcordant. This becomes relevant whenever reads are clipped from their 5' end prior to mapping,\\ne.g. because of quality or bias issues.\\nSpecify --no_dovetail to turn off this behaviour for paired-end libraries. Default: OFF."
    his_at_two: "Uses HISAT2 instead of Bowtie 2. Bismark uses HISAT2 in end-to-end mode by default,\\ni.e. searches for alignments involving all read characters (also called untrimmed or unclipped alignments)\\nusing the option '--no-softclipping'. Bismark assumes that raw sequence data is adapter and/or quality\\ntrimmed where appropriate. From v0.22.0 onwards, Bismark also supports the local alignment mode of\\nHISAT2 (please see --local). Both small (.ht2) and large (.ht2l) HISAT2 indexes are supported. Default: OFF."
    no_spliced_alignment: "Disable spliced alignment. Default: spliced-alignments are performed."
    known_splice_site_in_file: "Provide a list of known splice sites."
    no_mixed: "This option disables the behavior to try to find alignments for the individual mates if\\nit cannot find a concordant or discordant alignment for a pair. This option is invariably on by default."
    no_discordant: "Normally, Bowtie 2 or HISAT2 look for discordant alignments if it cannot find any concordant alignments.\\nA discordant alignment is an alignment where both mates align uniquely, but that does not\\nsatisfy the paired-end constraints (--fr/--rf/--ff, -I, -X). This option disables that behavior\\nand it is on by default."
    int_consecutive_seed: "Up to <int> consecutive seed extension attempts can \\\"fail\\\" before Bowtie 2 moves on, using\\nthe alignments found so far. A seed extension \\\"fails\\\" if it does not yield a new best or a\\nnew second-best alignment. Default: 15."
    int_maximum_number: "<int> is the maximum number of times Bowtie 2 will \\\"re-seed\\\" reads with repetitive seeds.\\nWhen \\\"re-seeding,\\\" Bowtie 2 simply chooses a new set of reads (same length, same number of\\nmismatches allowed) at different offsets and searches for more alignments. A read is considered\\nto have repetitive seeds if the total number of seed hits divided by the number of seeds\\nthat aligned at least once is greater than 300. Default: 2."
    launch_nthreads_parallel: "Launch NTHREADS parallel search threads (default: 1). Threads will run on separate processors/cores\\nand synchronize when parsing reads and outputting alignments. Searching for alignments is highly\\nparallel, and speedup is close to linear. Increasing -p increases Bowtie 2's memory footprint.\\nE.g. when aligning to a human genome index, increasing -p from 1 to 8 increases the memory footprint\\nby a few hundred megabytes. This option is only available if bowtie is linked with the pthreads\\nlibrary (i.e. if BOWTIE_PTHREADS=0 is not specified at build time). In addition, this option will\\nautomatically use the option '--reorder', which guarantees that output SAM records are printed in\\nan order corresponding to the order of the reads in the original input file, even when -p is set\\ngreater than 1 (Bismark requires the Bowtie 2 output to be this way). Specifying --reorder and\\nsetting -p greater than 1 causes Bowtie 2 to run somewhat slower and use somewhat more memory then\\nif --reorder were not specified. Has no effect if -p is set to 1, since output order will naturally\\ncorrespond to input order in that case."
    score_min: "Sets a function governing the minimum alignment score needed for an alignment to be considered\\n\\\"valid\\\" (i.e. good enough to report). This is a function of read length.\\nIn end-to-end mode (default), and --local mode for HISAT2 only, --score_min is set as a linear function\\nand is set as <L,value,value>.\\nFor instance, specifying L,0,-0.2 sets the minimum-score function f to f(x) = 0 + (-0.2) * x, where x\\nis the read length. The default for end-to-end (global) alignments is: L,0,-0.2.\\nIn --local mode for Bowtie 2, the function is logarithmic and is set as <G,value,value>. For instance, specifying\\nG,20,8 sets the minimum-score function f to f(x) = 20 + 8 * ln(x), where x is the read length.\\nThe default is for local alignments in Bowtie 2 mode is: G,20,8.\\nSee also: setting function options at http://bowtie-bio.sourceforge.net/bowtie2."
    rdg: ",<int2>      Sets the read gap open (<int1>) and extend (<int2>) penalties. A read gap of length N gets a penalty\\nof <int1> + N * <int2>. Default: 5, 3."
    rfg: ",<int2>      Sets the reference gap open (<int1>) and extend (<int2>) penalties. A reference gap of length N gets\\na penalty of <int1> + N * <int2>. Default: 5, 3."
    genome_folder: ""
  }
  output {
    File out_stdout = stdout()
    File out_rg_tag = "${in_rg_tag}"
    File out_bam = "${in_bam}"
    File out_cram = "${in_cram}"
    File out_cram_ref = "${in_cram_ref}"
    File out_prefix = "${in_prefix}"
    File out_basename = "${in_basename}"
    File out_am_big_bam = "${in_am_big_bam}"
  }
}