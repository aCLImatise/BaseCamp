class: CommandLineTool
id: xyalign.cwl
inputs:
- id: in_bam
  doc: "[BAM [BAM ...]]\nFull path to input bam files. If more than one\nprovided,\
    \ only the first will be used for modules\nother than --CHROM_STATS"
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_cram
  doc: "[CRAM [CRAM ...]]\nFull path to input cram files. If more than one\nprovided,\
    \ only the first will be used for modules\nother than --CHROM_STATS. Not currently\
    \ supported."
  type: boolean
  inputBinding:
    prefix: --cram
- id: in_sam
  doc: "[SAM [SAM ...]]\nFull path to input sam files. If more than one\nprovided,\
    \ only the first will be used for modules\nother than --CHROM_STATS. Not currently\
    \ supported."
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_ref
  doc: "REQUIRED. Path to reference sequence (including file\nname)."
  type: File
  inputBinding:
    prefix: --ref
- id: in_output_dir
  doc: "REQUIRED. Output directory. XYalign will create a\ndirectory structure within\
    \ this directory"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_chromosomes
  doc: "[CHROMOSOMES [CHROMOSOMES ...]], -c [CHROMOSOMES [CHROMOSOMES ...]]\nChromosomes\
    \ to analyze (names must match reference\nexactly). For humans, we recommend at\
    \ least chr19,\nchrX, chrY. Generally, we suggest including the sex\nchromosomes\
    \ and at least one autosome. To analyze all\nchromosomes use '--chromosomes ALL'\
    \ or '--chromosomes\nall'."
  type: boolean
  inputBinding:
    prefix: --chromosomes
- id: in_x_chromosome
  doc: "[X_CHROMOSOME [X_CHROMOSOME ...]], -x [X_CHROMOSOME [X_CHROMOSOME ...]]\n\
    Names of x-linked scaffolds in reference fasta (must\nmatch reference exactly)."
  type: boolean
  inputBinding:
    prefix: --x_chromosome
- id: in_y_chromosome
  doc: "[Y_CHROMOSOME [Y_CHROMOSOME ...]], -y [Y_CHROMOSOME [Y_CHROMOSOME ...]]\n\
    Names of y-linked scaffolds in reference fasta (must\nmatch reference exactly).\
    \ Defaults to chrY. Give None\nif using an assembly without a Y chromosome"
  type: boolean
  inputBinding:
    prefix: --y_chromosome
- id: in_sample_id
  doc: "Name/ID of sample - for use in plot titles and file\nnaming. Default is sample"
  type: File
  inputBinding:
    prefix: --sample_id
- id: in_cpus
  doc: Number of cores/threads to use. Default is 1
  type: long
  inputBinding:
    prefix: --cpus
- id: in_x_mx
  doc: "Memory to be provided to java programs via -Xmx. E.g.,\nuse the flag '--xmx\
    \ 4g' to pass '-Xmx4g' as a flag\nwhen running java programs (currently just repair.sh).\n\
    Default is 'None' (i.e., nothing provided on the\ncommand line), which will allow\
    \ repair.sh to\nautomatically allocate memory. Note that if you're\nusing --STRIP_READS\
    \ on deep coverage whole genome\ndata, you might need quite a bit of memory, e.g.\
    \ '--\nxmx 16g', '--xmx 32g', or more depending on how many\nreads are present\
    \ per read group."
  type: long
  inputBinding:
    prefix: --xmx
- id: in_fast_q_compression
  doc: "Compression level for fastqs output from repair.sh.\nBetween (inclusive) 0\
    \ and 9. Default is 3. 1 through 9\nindicate compression levels. If 0, fastqs\
    \ will be\nuncompressed."
  type: string
  inputBinding:
    prefix: --fastq_compression
- id: in_single_end
  doc: Include flag if reads are single-end and NOT paired-
  type: boolean
  inputBinding:
    prefix: --single_end
- id: in_no_cleanup
  doc: Include flag to preserve temporary files.
  type: boolean
  inputBinding:
    prefix: --no_cleanup
- id: in_prepare_reference
  doc: "This flag will limit XYalign to only preparing\nreference fastas for individuals\
    \ with and without Y\nchromosomes. These fastas can then be passed with each\n\
    sample to save subsequent processing time."
  type: boolean
  inputBinding:
    prefix: --PREPARE_REFERENCE
- id: in_chrom_stats
  doc: "This flag will limit XYalign to only analyzing\nprovided bam files for depth\
    \ and mapq across entire\nchromosomes."
  type: boolean
  inputBinding:
    prefix: --CHROM_STATS
- id: in_analyze_bam
  doc: "This flag will limit XYalign to only analyzing the bam\nfile for depth, mapq,\
    \ and (optionally) read balance\nand outputting plots."
  type: boolean
  inputBinding:
    prefix: --ANALYZE_BAM
- id: in_characterize_sex_chrom_s
  doc: "This flag will limit XYalign to the steps required to\ncharacterize sex chromosome\
    \ content (i.e., analyzing\nthe bam for depth, mapq, and read balance and running\n\
    statistical tests to help infer ploidy)"
  type: boolean
  inputBinding:
    prefix: --CHARACTERIZE_SEX_CHROMS
- id: in_remapping
  doc: "This flag will limit XYalign to only the steps\nrequired to strip reads and\
    \ remap to masked\nreferences. If masked references are not provided,\nthey will\
    \ be created."
  type: boolean
  inputBinding:
    prefix: --REMAPPING
- id: in_strip_reads
  doc: "This flag will limit XYalign to only the steps\nrequired to strip reads from\
    \ a provided bam file."
  type: boolean
  inputBinding:
    prefix: --STRIP_READS
- id: in_log_file
  doc: Name of logfile. Will overwrite if exists. Default is
  type: File
  inputBinding:
    prefix: --logfile
- id: in_platypus_path
  doc: "Path to platypus. Default is 'platypus'. If platypus\nis not directly callable\
    \ (e.g., '/path/to/platypus' or\n'/path/to/Playpus.py'), then provide path to\
    \ python as\nwell (e.g., '/path/to/python /path/to/platypus'). In\naddition, be\
    \ sure provided python is version 2. See\nthe documentation for more information\
    \ about setting\nup an anaconda environment."
  type: File
  inputBinding:
    prefix: --platypus_path
- id: in_bwa_path
  doc: Path to bwa. Default is 'bwa'
  type: File
  inputBinding:
    prefix: --bwa_path
- id: in_sam_tools_path
  doc: Path to samtools. Default is 'samtools'
  type: File
  inputBinding:
    prefix: --samtools_path
- id: in_repairs_h_path
  doc: "Path to bbmap's repair.sh script. Default is\n'repair.sh'"
  type: File
  inputBinding:
    prefix: --repairsh_path
- id: in_shuffles_h_path
  doc: "Path to bbmap's shuffle.sh script. Default is\n'shuffle.sh'"
  type: File
  inputBinding:
    prefix: --shufflesh_path
- id: in_samba_mba_path
  doc: Path to sambamba. Default is 'sambamba'
  type: File
  inputBinding:
    prefix: --sambamba_path
- id: in_bed_tools_path
  doc: Path to bedtools. Default is 'bedtools'
  type: File
  inputBinding:
    prefix: --bedtools_path
- id: in_platypus_calling
  doc: "Platypus calling withing the pipeline (before\nprocessing, after processing,\
    \ both, or neither).\nOptions: both, none, before, after."
  type: string
  inputBinding:
    prefix: --platypus_calling
- id: in_no_variant_plots
  doc: Include flag to prevent plotting read balance from VCF
  type: boolean
  inputBinding:
    prefix: --no_variant_plots
- id: in_skip_compatibility_check
  doc: "Include flag to prevent check of compatibility between\ninput bam and reference\
    \ fasta"
  type: boolean
  inputBinding:
    prefix: --skip_compatibility_check
- id: in_no_perm_test
  doc: Include flag to turn off permutation tests.
  type: boolean
  inputBinding:
    prefix: --no_perm_test
- id: in_no_ks_test
  doc: Include flag to turn off KS Two Sample tests.
  type: boolean
  inputBinding:
    prefix: --no_ks_test
- id: in_no_bootstrap
  doc: "Include flag to turn off bootstrap analyses. Requires\neither --y_present,\
    \ --y_absent, or\n--sex_chrom_calling_threshold if running full\npipeline."
  type: boolean
  inputBinding:
    prefix: --no_bootstrap
- id: in_variant_site_quality
  doc: "Consider all SNPs with a site quality (QUAL) greater\nthan or equal to this\
    \ value. Default is 30."
  type: long
  inputBinding:
    prefix: --variant_site_quality
- id: in_variant_genotype_quality
  doc: "Consider all SNPs with a sample genotype quality\ngreater than or equal to\
    \ this value. Default is 30."
  type: long
  inputBinding:
    prefix: --variant_genotype_quality
- id: in_variant_depth
  doc: "Consider all SNPs with a sample depth greater than or\nequal to this value.\
    \ Default is 4."
  type: long
  inputBinding:
    prefix: --variant_depth
- id: in_platypus_log_file
  doc: "Prefix to use for Platypus log files. Will default to\nthe sample_id argument\
    \ provided"
  type: File
  inputBinding:
    prefix: --platypus_logfile
- id: in_homogenize_read_balance
  doc: "If True, read balance values will be transformed by\nsubtracting each value\
    \ from 1. For example, 0.25 and\n0.75 would be treated equivalently. Default is\
    \ False."
  type: double
  inputBinding:
    prefix: --homogenize_read_balance
- id: in_min_variant_count
  doc: "Minimum number of variants in a window for the read\nbalance of that window\
    \ to be plotted. Note that this\ndoes not affect plotting of variant counts. Default\
    \ is\n1, though we note that many window averages will be\nmeaningless at this\
    \ setting."
  type: long
  inputBinding:
    prefix: --min_variant_count
- id: in_reference_mask
  doc: "[REFERENCE_MASK [REFERENCE_MASK ...]]\nBed file containing regions to replace\
    \ with Ns in the\nsex chromosome reference. Examples might include the\npseudoautosomal\
    \ regions on the Y to force all\nmapping/calling on those regions of the X chromosome.\n\
    Default is None."
  type: boolean
  inputBinding:
    prefix: --reference_mask
- id: in_xx_ref_out_name
  doc: "Desired name for masked output fasta for samples\nWITHOUT a Y chromosome (e.g.,\
    \ XX, XXX, XO, etc.).\nDefaults to 'xyalign_noY.masked.fa'. Will be output in\n\
    the XYalign reference directory."
  type: Directory
  inputBinding:
    prefix: --xx_ref_out_name
- id: in_xy_ref_out_name
  doc: "Desired name for masked output fasta for samples WITH\na Y chromosome (e.g.,\
    \ XY, XXY, etc.). Defaults to\n'xyalign_withY.masked.fa'. Will be output in the\n\
    XYalign reference directory."
  type: Directory
  inputBinding:
    prefix: --xy_ref_out_name
- id: in_xx_ref_out
  doc: "Desired path to and name of masked output fasta for\nsamples WITHOUT a Y chromosome\
    \ (e.g., XX, XXX, XO,\netc.). Overwrites if exists. Use if you would like\noutput\
    \ somewhere other than XYalign reference\ndirectory. Otherwise, use --xx_ref_name."
  type: File
  inputBinding:
    prefix: --xx_ref_out
- id: in_xy_ref_out
  doc: "Desired path to and name of masked output fasta for\nsamples WITH a Y chromosome\
    \ (e.g., XY, XXY, etc.).\nOverwrites if exists. Use if you would like output\n\
    somewhere other than XYalign reference directory.\nOtherwise, use --xy_ref_name."
  type: File
  inputBinding:
    prefix: --xy_ref_out
- id: in_xx_ref_in
  doc: "Path to preprocessed reference fasta to be used for\nremapping in X0 or XX\
    \ samples. Default is None. If\nnone, will produce a sample-specific reference\
    \ for\nremapping."
  type: File
  inputBinding:
    prefix: --xx_ref_in
- id: in_xy_ref_in
  doc: "Path to preprocessed reference fasta to be used for\nremapping in samples\
    \ containing Y chromosome. Default\nis None. If none, will produce a sample-specific\n\
    reference for remapping."
  type: File
  inputBinding:
    prefix: --xy_ref_in
- id: in_bwa_index
  doc: "If True, index with BWA during PREPARE_REFERENCE. Only\nrelevantwhen running\
    \ the PREPARE_REFERENCE module by\nitself. Default is False."
  type: string
  inputBinding:
    prefix: --bwa_index
- id: in_read_group_id
  doc: "If read groups are present in a bam file, they are\nused by default in remapping\
    \ steps. However, if read\ngroups are not present in a file, there are two\noptions\
    \ for proceeding. If '--read_group_id None' is\nprovided (case sensitive), then\
    \ no read groups will be\nused in subsequent mapping steps. Otherwise, any other\n\
    string provided to this flag will be used as a read\ngroup ID. Default is '--read_group_id\
    \ xyalign'"
  type: File
  inputBinding:
    prefix: --read_group_id
- id: in_bwa_flags
  doc: "Provide a string (in quotes, with spaces between\narguments) for additional\
    \ flags desired for BWA\nmapping (other than -R and -t). Example: '-M -T 20 -v\n\
    4'. Note that those are spaces between arguments."
  type: string
  inputBinding:
    prefix: --bwa_flags
- id: in_sex_chrom_bam_only
  doc: "This flag skips merging the new sex chromosome bam\nfile back into the original\
    \ bam file (i.e., sex chrom\nswapping). This will output a bam file containing\
    \ only\nthe newly remapped sex chromosomes."
  type: File
  inputBinding:
    prefix: --sex_chrom_bam_only
- id: in_sex_chrom_calling_threshold
  doc: "This is the *maximum* filtered X/Y depth ratio for an\nindividual to be considered\
    \ as having heterogametic\nsex chromsomes (e.g., XY) for the REMAPPING module\
    \ of\nXYalign. Note here that X and Y chromosomes are simply\nthe chromosomes\
    \ that have been designated as X and Y\nvia --x_chromosome and --y_chromosome.\
    \ Keep in mind\nthat the ideal threshold will vary according to sex\ndetermination\
    \ mechanism, sequence homology between the\nsex chromosomes, reference genome,\
    \ sequencing methods,\netc. See documentation for more detail. Default is\n2.0,\
    \ which we found to be reasonable for exome, low-\ncoverage whole-genome, and\
    \ high-coverage whole-genome\nhuman data."
  type: double
  inputBinding:
    prefix: --sex_chrom_calling_threshold
- id: in_y_present
  doc: "Overrides sex chr estimation by XYalign and remaps\nwith Y present."
  type: boolean
  inputBinding:
    prefix: --y_present
- id: in_y_absent
  doc: "Overrides sex chr estimation by XY align and remaps\nwith Y absent."
  type: boolean
  inputBinding:
    prefix: --y_absent
- id: in_window_size
  doc: "Window size (integer) for sliding window calculations.\nDefault is 50000.\
    \ Default is None. If set to None,\nwill use targets provided using --target_bed."
  type: long
  inputBinding:
    prefix: --window_size
- id: in_target_bed
  doc: "Bed file containing targets to use in sliding window\nanalyses instead of\
    \ a fixed window width. Either this\nor --window_size needs to be set. Default\
    \ is None,\nwhich will use window size provided with\n--window_size. If not None,\
    \ and --window_size is None,\nanalyses will use targets in provided file. Must\
    \ be\ntypical bed format, 0-based indexing, with the first\nthree columns containing\
    \ the chromosome name, start\ncoordinate, stop coordinate."
  type: long
  inputBinding:
    prefix: --target_bed
- id: in_exact_depth
  doc: "Calculate exact depth within windows, else use much\nfaster approximation.\
    \ *Currently exact is not\nimplemented*. Default is False."
  type: boolean
  inputBinding:
    prefix: --exact_depth
- id: in_whole_genome_threshold
  doc: "This flag will calculate the depth filter threshold\nbased on all values from\
    \ across the genome. By\ndefault, thresholds are calculated per chromosome."
  type: boolean
  inputBinding:
    prefix: --whole_genome_threshold
- id: in_mapq_cut_off
  doc: "Minimum mean mapq threshold for a window to be\nconsidered high quality. Default\
    \ is 20."
  type: long
  inputBinding:
    prefix: --mapq_cutoff
- id: in_min_depth_filter
  doc: "Minimum depth threshold for a window to be considered\nhigh quality. Calculated\
    \ as mean depth *\nmin_depth_filter. So, a min_depth_filter of 0.2 would\nrequire\
    \ at least a minimum depth of 2 if the mean\ndepth was 10. Default is 0.0 to consider\
    \ all windows."
  type: long
  inputBinding:
    prefix: --min_depth_filter
- id: in_max_depth_filter
  doc: "Maximum depth threshold for a window to be considered\nhigh quality. Calculated\
    \ as mean depth *\nmax_depth_filter. So, a max_depth_filter of 4 would\nrequire\
    \ depths to be less than or equal to 40 if the\nmean depth was 10. Default is\
    \ 10000.0 to consider all\nwindows."
  type: double
  inputBinding:
    prefix: --max_depth_filter
- id: in_num_permutations
  doc: "Number of permutations to use for permutation\nanalyses. Default is 10000"
  type: long
  inputBinding:
    prefix: --num_permutations
- id: in_num_bootstraps
  doc: "Number of bootstrap replicates to use when\nbootstrapping mean depth ratios\
    \ among chromosomes.\nDefault is 10000"
  type: long
  inputBinding:
    prefix: --num_bootstraps
- id: in_ignore_duplicates
  doc: "Ignore duplicate reads in bam analyses. Default is to\ninclude duplicates."
  type: boolean
  inputBinding:
    prefix: --ignore_duplicates
- id: in_marker_size
  doc: "Marker size for genome-wide plots in matplotlib.\nDefault is 10."
  type: long
  inputBinding:
    prefix: --marker_size
- id: in_marker_transparency
  doc: "Transparency of markers in genome-wide plots. Alpha in\nmatplotlib. Default\
    \ is 0.5"
  type: double
  inputBinding:
    prefix: --marker_transparency
- id: in_coordinate_scale
  doc: "For genome-wide scatter plots, divide all coordinates\nby this value.Default\
    \ is 1000000, which will plot\neverything in megabases."
  type: long
  inputBinding:
    prefix: --coordinate_scale
- id: in_include_fixed
  doc: "Default is False, which removes read balances less\nthan or equal to 0.05\
    \ and equal to 1.0 for histogram\nplotting. True will include all values. Extreme\
    \ values\nremoved by default because they often swamp out the\nsignal of the rest\
    \ of the distribution."
  type: double
  inputBinding:
    prefix: --include_fixed
- id: in_use_counts
  doc: "If True, get counts of reads per chromosome for\nCHROM_STATS, rather than\
    \ calculating mean depth and\nmapq. Much faster, but provides less information.\n\
    Default is False\n"
  type: boolean
  inputBinding:
    prefix: --use_counts
- id: in_end_dot
  doc: --version, -V         Print version and exit.
  type: string
  inputBinding:
    position: 0
- id: in_sample_xy_align_dot_log
  doc: --reporting_level {DEBUG,INFO,ERROR,CRITICAL}
  type: string
  inputBinding:
    position: 1
- id: in_files_dot
  doc: --no_bam_analysis     Include flag to prevent depth/mapq analysis of bam
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "REQUIRED. Output directory. XYalign will create a\ndirectory structure within\
    \ this directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_xx_ref_out_name
  doc: "Desired name for masked output fasta for samples\nWITHOUT a Y chromosome (e.g.,\
    \ XX, XXX, XO, etc.).\nDefaults to 'xyalign_noY.masked.fa'. Will be output in\n\
    the XYalign reference directory."
  type: Directory
  outputBinding:
    glob: $(inputs.in_xx_ref_out_name)
- id: out_xy_ref_out_name
  doc: "Desired name for masked output fasta for samples WITH\na Y chromosome (e.g.,\
    \ XY, XXY, etc.). Defaults to\n'xyalign_withY.masked.fa'. Will be output in the\n\
    XYalign reference directory."
  type: Directory
  outputBinding:
    glob: $(inputs.in_xy_ref_out_name)
- id: out_xx_ref_out
  doc: "Desired path to and name of masked output fasta for\nsamples WITHOUT a Y chromosome\
    \ (e.g., XX, XXX, XO,\netc.). Overwrites if exists. Use if you would like\noutput\
    \ somewhere other than XYalign reference\ndirectory. Otherwise, use --xx_ref_name."
  type: File
  outputBinding:
    glob: $(inputs.in_xx_ref_out)
- id: out_xy_ref_out
  doc: "Desired path to and name of masked output fasta for\nsamples WITH a Y chromosome\
    \ (e.g., XY, XXY, etc.).\nOverwrites if exists. Use if you would like output\n\
    somewhere other than XYalign reference directory.\nOtherwise, use --xy_ref_name."
  type: File
  outputBinding:
    glob: $(inputs.in_xy_ref_out)
- id: out_sex_chrom_bam_only
  doc: "This flag skips merging the new sex chromosome bam\nfile back into the original\
    \ bam file (i.e., sex chrom\nswapping). This will output a bam file containing\
    \ only\nthe newly remapped sex chromosomes."
  type: File
  outputBinding:
    glob: $(inputs.in_sex_chrom_bam_only)
cwlVersion: v1.1
baseCommand:
- xyalign
