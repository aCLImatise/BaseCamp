version 1.0

task Xyalign {
  input {
    Boolean? bam
    Boolean? cram
    Boolean? sam
    File? ref
    Directory? output_dir
    Boolean? chromosomes
    Boolean? x_chromosome
    Boolean? y_chromosome
    File? sample_id
    Int? cpus
    Int? x_mx
    String? fast_q_compression
    Boolean? single_end
    Boolean? no_cleanup
    Boolean? prepare_reference
    Boolean? chrom_stats
    Boolean? analyze_bam
    Boolean? characterize_sex_chrom_s
    Boolean? remapping
    Boolean? strip_reads
    File? log_file
    File? platypus_path
    File? bwa_path
    File? sam_tools_path
    File? repairs_h_path
    File? shuffles_h_path
    File? samba_mba_path
    File? bed_tools_path
    String? platypus_calling
    Boolean? no_variant_plots
    Boolean? skip_compatibility_check
    Boolean? no_perm_test
    Boolean? no_ks_test
    Boolean? no_bootstrap
    Int? variant_site_quality
    Int? variant_genotype_quality
    Int? variant_depth
    File? platypus_log_file
    Float? homogenize_read_balance
    Int? min_variant_count
    Boolean? reference_mask
    Directory? xx_ref_out_name
    Directory? xy_ref_out_name
    File? xx_ref_out
    File? xy_ref_out
    File? xx_ref_in
    File? xy_ref_in
    String? bwa_index
    File? read_group_id
    String? bwa_flags
    File? sex_chrom_bam_only
    Float? sex_chrom_calling_threshold
    Boolean? y_present
    Boolean? y_absent
    Int? window_size
    Int? target_bed
    Boolean? exact_depth
    Boolean? whole_genome_threshold
    Int? mapq_cut_off
    Int? min_depth_filter
    Float? max_depth_filter
    Int? num_permutations
    Int? num_bootstraps
    Boolean? ignore_duplicates
    Int? marker_size
    Float? marker_transparency
    Int? coordinate_scale
    Float? include_fixed
    Boolean? use_counts
    String end_dot
    String sample_xy_align_dot_log
    String files_dot
  }
  command <<<
    xyalign \
      ~{end_dot} \
      ~{sample_xy_align_dot_log} \
      ~{files_dot} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (cram) then "--cram" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (chromosomes) then "--chromosomes" else ""} \
      ~{if (x_chromosome) then "--x_chromosome" else ""} \
      ~{if (y_chromosome) then "--y_chromosome" else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(x_mx) then ("--xmx " +  '"' + x_mx + '"') else ""} \
      ~{if defined(fast_q_compression) then ("--fastq_compression " +  '"' + fast_q_compression + '"') else ""} \
      ~{if (single_end) then "--single_end" else ""} \
      ~{if (no_cleanup) then "--no_cleanup" else ""} \
      ~{if (prepare_reference) then "--PREPARE_REFERENCE" else ""} \
      ~{if (chrom_stats) then "--CHROM_STATS" else ""} \
      ~{if (analyze_bam) then "--ANALYZE_BAM" else ""} \
      ~{if (characterize_sex_chrom_s) then "--CHARACTERIZE_SEX_CHROMS" else ""} \
      ~{if (remapping) then "--REMAPPING" else ""} \
      ~{if (strip_reads) then "--STRIP_READS" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(platypus_path) then ("--platypus_path " +  '"' + platypus_path + '"') else ""} \
      ~{if defined(bwa_path) then ("--bwa_path " +  '"' + bwa_path + '"') else ""} \
      ~{if defined(sam_tools_path) then ("--samtools_path " +  '"' + sam_tools_path + '"') else ""} \
      ~{if defined(repairs_h_path) then ("--repairsh_path " +  '"' + repairs_h_path + '"') else ""} \
      ~{if defined(shuffles_h_path) then ("--shufflesh_path " +  '"' + shuffles_h_path + '"') else ""} \
      ~{if defined(samba_mba_path) then ("--sambamba_path " +  '"' + samba_mba_path + '"') else ""} \
      ~{if defined(bed_tools_path) then ("--bedtools_path " +  '"' + bed_tools_path + '"') else ""} \
      ~{if defined(platypus_calling) then ("--platypus_calling " +  '"' + platypus_calling + '"') else ""} \
      ~{if (no_variant_plots) then "--no_variant_plots" else ""} \
      ~{if (skip_compatibility_check) then "--skip_compatibility_check" else ""} \
      ~{if (no_perm_test) then "--no_perm_test" else ""} \
      ~{if (no_ks_test) then "--no_ks_test" else ""} \
      ~{if (no_bootstrap) then "--no_bootstrap" else ""} \
      ~{if defined(variant_site_quality) then ("--variant_site_quality " +  '"' + variant_site_quality + '"') else ""} \
      ~{if defined(variant_genotype_quality) then ("--variant_genotype_quality " +  '"' + variant_genotype_quality + '"') else ""} \
      ~{if defined(variant_depth) then ("--variant_depth " +  '"' + variant_depth + '"') else ""} \
      ~{if defined(platypus_log_file) then ("--platypus_logfile " +  '"' + platypus_log_file + '"') else ""} \
      ~{if defined(homogenize_read_balance) then ("--homogenize_read_balance " +  '"' + homogenize_read_balance + '"') else ""} \
      ~{if defined(min_variant_count) then ("--min_variant_count " +  '"' + min_variant_count + '"') else ""} \
      ~{if (reference_mask) then "--reference_mask" else ""} \
      ~{if defined(xx_ref_out_name) then ("--xx_ref_out_name " +  '"' + xx_ref_out_name + '"') else ""} \
      ~{if defined(xy_ref_out_name) then ("--xy_ref_out_name " +  '"' + xy_ref_out_name + '"') else ""} \
      ~{if defined(xx_ref_out) then ("--xx_ref_out " +  '"' + xx_ref_out + '"') else ""} \
      ~{if defined(xy_ref_out) then ("--xy_ref_out " +  '"' + xy_ref_out + '"') else ""} \
      ~{if defined(xx_ref_in) then ("--xx_ref_in " +  '"' + xx_ref_in + '"') else ""} \
      ~{if defined(xy_ref_in) then ("--xy_ref_in " +  '"' + xy_ref_in + '"') else ""} \
      ~{if defined(bwa_index) then ("--bwa_index " +  '"' + bwa_index + '"') else ""} \
      ~{if defined(read_group_id) then ("--read_group_id " +  '"' + read_group_id + '"') else ""} \
      ~{if defined(bwa_flags) then ("--bwa_flags " +  '"' + bwa_flags + '"') else ""} \
      ~{if (sex_chrom_bam_only) then "--sex_chrom_bam_only" else ""} \
      ~{if defined(sex_chrom_calling_threshold) then ("--sex_chrom_calling_threshold " +  '"' + sex_chrom_calling_threshold + '"') else ""} \
      ~{if (y_present) then "--y_present" else ""} \
      ~{if (y_absent) then "--y_absent" else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(target_bed) then ("--target_bed " +  '"' + target_bed + '"') else ""} \
      ~{if (exact_depth) then "--exact_depth" else ""} \
      ~{if (whole_genome_threshold) then "--whole_genome_threshold" else ""} \
      ~{if defined(mapq_cut_off) then ("--mapq_cutoff " +  '"' + mapq_cut_off + '"') else ""} \
      ~{if defined(min_depth_filter) then ("--min_depth_filter " +  '"' + min_depth_filter + '"') else ""} \
      ~{if defined(max_depth_filter) then ("--max_depth_filter " +  '"' + max_depth_filter + '"') else ""} \
      ~{if defined(num_permutations) then ("--num_permutations " +  '"' + num_permutations + '"') else ""} \
      ~{if defined(num_bootstraps) then ("--num_bootstraps " +  '"' + num_bootstraps + '"') else ""} \
      ~{if (ignore_duplicates) then "--ignore_duplicates" else ""} \
      ~{if defined(marker_size) then ("--marker_size " +  '"' + marker_size + '"') else ""} \
      ~{if defined(marker_transparency) then ("--marker_transparency " +  '"' + marker_transparency + '"') else ""} \
      ~{if defined(coordinate_scale) then ("--coordinate_scale " +  '"' + coordinate_scale + '"') else ""} \
      ~{if defined(include_fixed) then ("--include_fixed " +  '"' + include_fixed + '"') else ""} \
      ~{if (use_counts) then "--use_counts" else ""}
  >>>
  parameter_meta {
    bam: "[BAM [BAM ...]]\\nFull path to input bam files. If more than one\\nprovided, only the first will be used for modules\\nother than --CHROM_STATS"
    cram: "[CRAM [CRAM ...]]\\nFull path to input cram files. If more than one\\nprovided, only the first will be used for modules\\nother than --CHROM_STATS. Not currently supported."
    sam: "[SAM [SAM ...]]\\nFull path to input sam files. If more than one\\nprovided, only the first will be used for modules\\nother than --CHROM_STATS. Not currently supported."
    ref: "REQUIRED. Path to reference sequence (including file\\nname)."
    output_dir: "REQUIRED. Output directory. XYalign will create a\\ndirectory structure within this directory"
    chromosomes: "[CHROMOSOMES [CHROMOSOMES ...]], -c [CHROMOSOMES [CHROMOSOMES ...]]\\nChromosomes to analyze (names must match reference\\nexactly). For humans, we recommend at least chr19,\\nchrX, chrY. Generally, we suggest including the sex\\nchromosomes and at least one autosome. To analyze all\\nchromosomes use '--chromosomes ALL' or '--chromosomes\\nall'."
    x_chromosome: "[X_CHROMOSOME [X_CHROMOSOME ...]], -x [X_CHROMOSOME [X_CHROMOSOME ...]]\\nNames of x-linked scaffolds in reference fasta (must\\nmatch reference exactly)."
    y_chromosome: "[Y_CHROMOSOME [Y_CHROMOSOME ...]], -y [Y_CHROMOSOME [Y_CHROMOSOME ...]]\\nNames of y-linked scaffolds in reference fasta (must\\nmatch reference exactly). Defaults to chrY. Give None\\nif using an assembly without a Y chromosome"
    sample_id: "Name/ID of sample - for use in plot titles and file\\nnaming. Default is sample"
    cpus: "Number of cores/threads to use. Default is 1"
    x_mx: "Memory to be provided to java programs via -Xmx. E.g.,\\nuse the flag '--xmx 4g' to pass '-Xmx4g' as a flag\\nwhen running java programs (currently just repair.sh).\\nDefault is 'None' (i.e., nothing provided on the\\ncommand line), which will allow repair.sh to\\nautomatically allocate memory. Note that if you're\\nusing --STRIP_READS on deep coverage whole genome\\ndata, you might need quite a bit of memory, e.g. '--\\nxmx 16g', '--xmx 32g', or more depending on how many\\nreads are present per read group."
    fast_q_compression: "Compression level for fastqs output from repair.sh.\\nBetween (inclusive) 0 and 9. Default is 3. 1 through 9\\nindicate compression levels. If 0, fastqs will be\\nuncompressed."
    single_end: "Include flag if reads are single-end and NOT paired-"
    no_cleanup: "Include flag to preserve temporary files."
    prepare_reference: "This flag will limit XYalign to only preparing\\nreference fastas for individuals with and without Y\\nchromosomes. These fastas can then be passed with each\\nsample to save subsequent processing time."
    chrom_stats: "This flag will limit XYalign to only analyzing\\nprovided bam files for depth and mapq across entire\\nchromosomes."
    analyze_bam: "This flag will limit XYalign to only analyzing the bam\\nfile for depth, mapq, and (optionally) read balance\\nand outputting plots."
    characterize_sex_chrom_s: "This flag will limit XYalign to the steps required to\\ncharacterize sex chromosome content (i.e., analyzing\\nthe bam for depth, mapq, and read balance and running\\nstatistical tests to help infer ploidy)"
    remapping: "This flag will limit XYalign to only the steps\\nrequired to strip reads and remap to masked\\nreferences. If masked references are not provided,\\nthey will be created."
    strip_reads: "This flag will limit XYalign to only the steps\\nrequired to strip reads from a provided bam file."
    log_file: "Name of logfile. Will overwrite if exists. Default is"
    platypus_path: "Path to platypus. Default is 'platypus'. If platypus\\nis not directly callable (e.g., '/path/to/platypus' or\\n'/path/to/Playpus.py'), then provide path to python as\\nwell (e.g., '/path/to/python /path/to/platypus'). In\\naddition, be sure provided python is version 2. See\\nthe documentation for more information about setting\\nup an anaconda environment."
    bwa_path: "Path to bwa. Default is 'bwa'"
    sam_tools_path: "Path to samtools. Default is 'samtools'"
    repairs_h_path: "Path to bbmap's repair.sh script. Default is\\n'repair.sh'"
    shuffles_h_path: "Path to bbmap's shuffle.sh script. Default is\\n'shuffle.sh'"
    samba_mba_path: "Path to sambamba. Default is 'sambamba'"
    bed_tools_path: "Path to bedtools. Default is 'bedtools'"
    platypus_calling: "Platypus calling withing the pipeline (before\\nprocessing, after processing, both, or neither).\\nOptions: both, none, before, after."
    no_variant_plots: "Include flag to prevent plotting read balance from VCF"
    skip_compatibility_check: "Include flag to prevent check of compatibility between\\ninput bam and reference fasta"
    no_perm_test: "Include flag to turn off permutation tests."
    no_ks_test: "Include flag to turn off KS Two Sample tests."
    no_bootstrap: "Include flag to turn off bootstrap analyses. Requires\\neither --y_present, --y_absent, or\\n--sex_chrom_calling_threshold if running full\\npipeline."
    variant_site_quality: "Consider all SNPs with a site quality (QUAL) greater\\nthan or equal to this value. Default is 30."
    variant_genotype_quality: "Consider all SNPs with a sample genotype quality\\ngreater than or equal to this value. Default is 30."
    variant_depth: "Consider all SNPs with a sample depth greater than or\\nequal to this value. Default is 4."
    platypus_log_file: "Prefix to use for Platypus log files. Will default to\\nthe sample_id argument provided"
    homogenize_read_balance: "If True, read balance values will be transformed by\\nsubtracting each value from 1. For example, 0.25 and\\n0.75 would be treated equivalently. Default is False."
    min_variant_count: "Minimum number of variants in a window for the read\\nbalance of that window to be plotted. Note that this\\ndoes not affect plotting of variant counts. Default is\\n1, though we note that many window averages will be\\nmeaningless at this setting."
    reference_mask: "[REFERENCE_MASK [REFERENCE_MASK ...]]\\nBed file containing regions to replace with Ns in the\\nsex chromosome reference. Examples might include the\\npseudoautosomal regions on the Y to force all\\nmapping/calling on those regions of the X chromosome.\\nDefault is None."
    xx_ref_out_name: "Desired name for masked output fasta for samples\\nWITHOUT a Y chromosome (e.g., XX, XXX, XO, etc.).\\nDefaults to 'xyalign_noY.masked.fa'. Will be output in\\nthe XYalign reference directory."
    xy_ref_out_name: "Desired name for masked output fasta for samples WITH\\na Y chromosome (e.g., XY, XXY, etc.). Defaults to\\n'xyalign_withY.masked.fa'. Will be output in the\\nXYalign reference directory."
    xx_ref_out: "Desired path to and name of masked output fasta for\\nsamples WITHOUT a Y chromosome (e.g., XX, XXX, XO,\\netc.). Overwrites if exists. Use if you would like\\noutput somewhere other than XYalign reference\\ndirectory. Otherwise, use --xx_ref_name."
    xy_ref_out: "Desired path to and name of masked output fasta for\\nsamples WITH a Y chromosome (e.g., XY, XXY, etc.).\\nOverwrites if exists. Use if you would like output\\nsomewhere other than XYalign reference directory.\\nOtherwise, use --xy_ref_name."
    xx_ref_in: "Path to preprocessed reference fasta to be used for\\nremapping in X0 or XX samples. Default is None. If\\nnone, will produce a sample-specific reference for\\nremapping."
    xy_ref_in: "Path to preprocessed reference fasta to be used for\\nremapping in samples containing Y chromosome. Default\\nis None. If none, will produce a sample-specific\\nreference for remapping."
    bwa_index: "If True, index with BWA during PREPARE_REFERENCE. Only\\nrelevantwhen running the PREPARE_REFERENCE module by\\nitself. Default is False."
    read_group_id: "If read groups are present in a bam file, they are\\nused by default in remapping steps. However, if read\\ngroups are not present in a file, there are two\\noptions for proceeding. If '--read_group_id None' is\\nprovided (case sensitive), then no read groups will be\\nused in subsequent mapping steps. Otherwise, any other\\nstring provided to this flag will be used as a read\\ngroup ID. Default is '--read_group_id xyalign'"
    bwa_flags: "Provide a string (in quotes, with spaces between\\narguments) for additional flags desired for BWA\\nmapping (other than -R and -t). Example: '-M -T 20 -v\\n4'. Note that those are spaces between arguments."
    sex_chrom_bam_only: "This flag skips merging the new sex chromosome bam\\nfile back into the original bam file (i.e., sex chrom\\nswapping). This will output a bam file containing only\\nthe newly remapped sex chromosomes."
    sex_chrom_calling_threshold: "This is the *maximum* filtered X/Y depth ratio for an\\nindividual to be considered as having heterogametic\\nsex chromsomes (e.g., XY) for the REMAPPING module of\\nXYalign. Note here that X and Y chromosomes are simply\\nthe chromosomes that have been designated as X and Y\\nvia --x_chromosome and --y_chromosome. Keep in mind\\nthat the ideal threshold will vary according to sex\\ndetermination mechanism, sequence homology between the\\nsex chromosomes, reference genome, sequencing methods,\\netc. See documentation for more detail. Default is\\n2.0, which we found to be reasonable for exome, low-\\ncoverage whole-genome, and high-coverage whole-genome\\nhuman data."
    y_present: "Overrides sex chr estimation by XYalign and remaps\\nwith Y present."
    y_absent: "Overrides sex chr estimation by XY align and remaps\\nwith Y absent."
    window_size: "Window size (integer) for sliding window calculations.\\nDefault is 50000. Default is None. If set to None,\\nwill use targets provided using --target_bed."
    target_bed: "Bed file containing targets to use in sliding window\\nanalyses instead of a fixed window width. Either this\\nor --window_size needs to be set. Default is None,\\nwhich will use window size provided with\\n--window_size. If not None, and --window_size is None,\\nanalyses will use targets in provided file. Must be\\ntypical bed format, 0-based indexing, with the first\\nthree columns containing the chromosome name, start\\ncoordinate, stop coordinate."
    exact_depth: "Calculate exact depth within windows, else use much\\nfaster approximation. *Currently exact is not\\nimplemented*. Default is False."
    whole_genome_threshold: "This flag will calculate the depth filter threshold\\nbased on all values from across the genome. By\\ndefault, thresholds are calculated per chromosome."
    mapq_cut_off: "Minimum mean mapq threshold for a window to be\\nconsidered high quality. Default is 20."
    min_depth_filter: "Minimum depth threshold for a window to be considered\\nhigh quality. Calculated as mean depth *\\nmin_depth_filter. So, a min_depth_filter of 0.2 would\\nrequire at least a minimum depth of 2 if the mean\\ndepth was 10. Default is 0.0 to consider all windows."
    max_depth_filter: "Maximum depth threshold for a window to be considered\\nhigh quality. Calculated as mean depth *\\nmax_depth_filter. So, a max_depth_filter of 4 would\\nrequire depths to be less than or equal to 40 if the\\nmean depth was 10. Default is 10000.0 to consider all\\nwindows."
    num_permutations: "Number of permutations to use for permutation\\nanalyses. Default is 10000"
    num_bootstraps: "Number of bootstrap replicates to use when\\nbootstrapping mean depth ratios among chromosomes.\\nDefault is 10000"
    ignore_duplicates: "Ignore duplicate reads in bam analyses. Default is to\\ninclude duplicates."
    marker_size: "Marker size for genome-wide plots in matplotlib.\\nDefault is 10."
    marker_transparency: "Transparency of markers in genome-wide plots. Alpha in\\nmatplotlib. Default is 0.5"
    coordinate_scale: "For genome-wide scatter plots, divide all coordinates\\nby this value.Default is 1000000, which will plot\\neverything in megabases."
    include_fixed: "Default is False, which removes read balances less\\nthan or equal to 0.05 and equal to 1.0 for histogram\\nplotting. True will include all values. Extreme values\\nremoved by default because they often swamp out the\\nsignal of the rest of the distribution."
    use_counts: "If True, get counts of reads per chromosome for\\nCHROM_STATS, rather than calculating mean depth and\\nmapq. Much faster, but provides less information.\\nDefault is False\\n"
    end_dot: "--version, -V         Print version and exit."
    sample_xy_align_dot_log: "--reporting_level {DEBUG,INFO,ERROR,CRITICAL}"
    files_dot: "--no_bam_analysis     Include flag to prevent depth/mapq analysis of bam"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    Directory out_xx_ref_out_name = "${in_xx_ref_out_name}"
    Directory out_xy_ref_out_name = "${in_xy_ref_out_name}"
    File out_xx_ref_out = "${in_xx_ref_out}"
    File out_xy_ref_out = "${in_xy_ref_out}"
    File out_sex_chrom_bam_only = "${in_sex_chrom_bam_only}"
  }
}