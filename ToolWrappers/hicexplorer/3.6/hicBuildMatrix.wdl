version 1.0

task HicBuildMatrix {
  input {
    String? sam_files
    File? out_filename
    Directory? qc_folder
    File? restriction_cut_file
    Array[String] restriction_sequence
    Array[String] dangling_sequence
    File? out_bam
    Array[String] binsize
    Int? min_distance
    Int? max_distance
    Int? max_library_insert_size
    File? genome_assembly
    Int? region
    Int? remove_self_ligation
    Boolean? keep_self_circles
    Int? min_mapping_quality
    Int? threads
    Int? input_buffer_size
    Boolean? do_test_run
    Int? do_test_run_lines
    Boolean? skip_duplication_check
    Int? chromosome_sizes
    String sam
    String files
    String two
  }
  command <<<
    hicBuildMatrix \
      ~{sam} \
      ~{files} \
      ~{two} \
      ~{if defined(sam_files) then ("--samFiles " +  '"' + sam_files + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(qc_folder) then ("--QCfolder " +  '"' + qc_folder + '"') else ""} \
      ~{if defined(restriction_cut_file) then ("--restrictionCutFile " +  '"' + restriction_cut_file + '"') else ""} \
      ~{if defined(restriction_sequence) then ("--restrictionSequence " +  '"' + restriction_sequence + '"') else ""} \
      ~{if defined(dangling_sequence) then ("--danglingSequence " +  '"' + dangling_sequence + '"') else ""} \
      ~{if defined(out_bam) then ("--outBam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(binsize) then ("--binSize " +  '"' + binsize + '"') else ""} \
      ~{if defined(min_distance) then ("--minDistance " +  '"' + min_distance + '"') else ""} \
      ~{if defined(max_distance) then ("--maxDistance " +  '"' + max_distance + '"') else ""} \
      ~{if defined(max_library_insert_size) then ("--maxLibraryInsertSize " +  '"' + max_library_insert_size + '"') else ""} \
      ~{if defined(genome_assembly) then ("--genomeAssembly " +  '"' + genome_assembly + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(remove_self_ligation) then ("--removeSelfLigation " +  '"' + remove_self_ligation + '"') else ""} \
      ~{if (keep_self_circles) then "--keepSelfCircles" else ""} \
      ~{if defined(min_mapping_quality) then ("--minMappingQuality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(input_buffer_size) then ("--inputBufferSize " +  '"' + input_buffer_size + '"') else ""} \
      ~{if (do_test_run) then "--doTestRun" else ""} \
      ~{if defined(do_test_run_lines) then ("--doTestRunLines " +  '"' + do_test_run_lines + '"') else ""} \
      ~{if (skip_duplication_check) then "--skipDuplicationCheck" else ""} \
      ~{if defined(chromosome_sizes) then ("--chromosomeSizes " +  '"' + chromosome_sizes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    sam_files: "sam files two sam files, -s two sam files two sam files\\nThe two PE alignment sam files to process (default:\\nNone)"
    out_filename: "Output file name for the Hi-C matrix. (default: None)"
    qc_folder: "Path of folder to save the quality control data for\\nthe matrix. The log files produced this way can be\\nloaded into `hicQC` in order to compare the quality of\\nmultiple Hi-C libraries. (default: None)"
    restriction_cut_file: "file [BED file ...], -rs BED file [BED file ...]\\nBED file(s) with all restriction cut sites (output of\\n\\\"hicFindRestSite\\\" command). Should only contain the\\nrestriction sites of the same genome which has been\\nused to generate the input sam files. Using regions of\\na different genome version can generate false results!\\nTo use more than one restriction enzyme, generate a\\nrestrictionCutFile for each enzyne and list them space\\nseperated. (default: None)"
    restriction_sequence: "Sequence of the restriction site, if multiple are\\nused, please list them space seperated. If a dangling\\nsequence is listed at the same time, please preserve\\nthe same order. (default: None)"
    dangling_sequence: "Sequence left by the restriction enzyme after cutting,\\nif multiple are used, please list them space seperated\\nand preserve the order. Each restriction enzyme\\nrecognizes a different DNA sequence and, after\\ncutting, they leave behind a specific \\\"sticky\\\" end or\\ndangling end sequence. For example, for HindIII the\\nrestriction site is AAGCTT and the dangling end is\\nAGCT. For DpnII, the restriction site and dangling end\\nsequence are the same: GATC. This information is\\neasily found on the description of the restriction\\nenzyme. The dangling sequence is used to classify and\\nreport reads whose 5' end starts with such sequence as\\ndangling-end reads. A significant portion of dangling-\\nend reads in a sample are indicative of a problem with\\nthe re-ligation step of the protocol. (default: None)"
    out_bam: "file, -b bam file\\nOutput bam file to process. Optional parameter. A bam\\nfile containing all valid Hi-C reads can be created\\nusing this option. This bam file could be useful to\\ninspect the distribution of valid Hi-C reads pairs or\\nfor other downstream analyses, but is not used by any\\nHiCExplorer tool. Computation will be significantly\\nlonger if this option is set. (default: None)"
    binsize: "Size in bp for the bins. The bin size depends on the\\ndepth of sequencing. Use a larger bin size for\\nlibraries sequenced with lower depth. If not given,\\nmatrices of restriction site resolution will be built.\\nOptionally for mcool file format: Define multiple\\nresolutions which are all a multiple of the first\\nvalue. Example: --binSize 10000 20000 50000 will\\ncreate a mcool file formate containing the three\\ndefined resolutions. (default: None)"
    min_distance: "Minimum distance between restriction sites.\\nRestriction sites that are closer than this distance\\nare merged into one. This option only applies if\\n--restrictionCutFile is given (Default: 300)."
    max_distance: "This parameter is now obsolete. Use\\n--maxLibraryInsertSize instead (default: None)"
    max_library_insert_size: "The maximum library insert size defines different cut\\noffs based on the maximum expected library size. *This\\nis not the average fragment size* but the higher end\\nof the the fragment size distribution (obtained using\\nfor example a Fragment Analyzer or a Bioanalyzer)\\nwhich usually is between 800 to 1500 bp. If this value\\nis not known use the default value. The insert value\\nis used to decide if two mates belong to the same\\nfragment (by checking if they are within this max\\ninsert size) and to decide if a mate is too far away\\nfrom the nearest restriction site (Default: 1000)."
    genome_assembly: "The genome the reads were mapped to. Used for metadata\\nof cool file. (default: None)"
    region: ":START-END, -r CHR:START-END\\nRegion of the genome to limit the operation to. The\\nformat is chr:start-end. It is also possible to just\\nspecify a chromosome, for example --region chr10\\n(default: None)"
    remove_self_ligation: "If set, inward facing reads less than 1000 bp apart\\nand having a restrictionsite in between are removed.\\nAlthough this reads do not contribute to any distant\\ncontact, they are useful to account for bias in the\\ndata (for the moment is always True). (default: True)"
    keep_self_circles: "If set, outward facing reads without any restriction\\nfragment (self circles) are kept. They will be counted\\nand shown in the QC plots. (default: False)"
    min_mapping_quality: "minimum mapping quality for reads to be accepted.\\nBecause the restriction enzyme site could be located\\non top of the read, this may reduce the reported\\nquality of the read. Thus, this parameter may be\\nadjusted if too many low quality (but otherwise\\nperfectly valid Hi-C reads) are found. A good strategy\\nis to make a test run (using the --doTestRun), then\\nchecking the results to see if too many low quality\\nreads are present and then using the bam file\\ngenerated to check if those low quality reads are\\ncaused by the read not being mapped entirely (Default:\\n15)."
    threads: "Number of threads. Using the python multiprocessing\\nmodule. One master process which is used to read the\\ninput file into the buffer and one process which is\\nmerging the output bam files of the processes into one\\noutput bam file. All other threads do the actual\\ncomputation. Minimum value for the '--thread'\\nparameter is 2. The usage of 8 threads is optimal if\\nyou have an HDD. A higher number of threads is only\\nuseful if you have a fast SSD. Have in mind that the\\nperformance of hicBuildMatrix is influenced by the\\nnumber of threads, the speed of your hard drive and\\nthe inputBufferSize. To clarify: the performance with\\na higher thread number is not negative influenced but\\nnot positive too. With a slow HDD and a high number of\\nthreads many threads will do nothing most of the time\\n(Default: 4)."
    input_buffer_size: "Size of the input buffer of each thread. 400,000 read\\npairs per input file per thread is the default value.\\nReduce this value to decrease memory usage. (default:\\n400000)"
    do_test_run: "A test run is useful to test the quality of a Hi-C\\nexperiment quickly. It works by testing only 1,000,000\\nreads. This option is useful to get an idea of quality\\ncontrol values like inter-chromosomal interactions,\\nduplication rates etc. (default: False)"
    do_test_run_lines: "Number of lines to consider for the qc test run\\n(Default: 1000000)."
    skip_duplication_check: "Identification of duplicated read pairs is memory\\nconsuming. Thus, in case of memory errors this check\\ncan be skipped. However, consider running a\\n`--doTestRun` first to get an estimation of the\\nduplicated reads. (default: False)"
    chromosome_sizes: "file, -cs txt file\\nFile with the chromosome sizes for your genome. A tab-\\ndelimited two column layout \\\"chr_name size\\\" is\\nexpectedUsually the sizes can be determined from the\\nSAM/BAM input files, however, for cHi-C or scHi-C it\\ncan be that at the start or end no data is present.\\nPlease consider that this option causes that only\\nreads are considered which are on the listed\\nchromosomes.Use this option to guarantee fixed sizes.\\nAn example file is available via UCSC: http://hgdownlo\\nad.soe.ucsc.edu/goldenPath/dm3/bigZips/dm3.chrom.sizes\\n(default: None)"
    sam: ""
    files: ""
    two: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_out_bam = "${in_out_bam}"
  }
}