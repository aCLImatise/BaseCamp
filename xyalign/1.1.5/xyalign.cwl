class: CommandLineTool
id: xyalign.cwl
inputs:
- id: bam
  doc: '[BAM [BAM ...]] Full path to input bam files. If more than one provided, only
    the first will be used for modules other than --CHROM_STATS'
  type: boolean
  inputBinding:
    prefix: --bam
- id: cram
  doc: '[CRAM [CRAM ...]] Full path to input cram files. If more than one provided,
    only the first will be used for modules other than --CHROM_STATS. Not currently
    supported.'
  type: boolean
  inputBinding:
    prefix: --cram
- id: sam
  doc: '[SAM [SAM ...]] Full path to input sam files. If more than one provided, only
    the first will be used for modules other than --CHROM_STATS. Not currently supported.'
  type: boolean
  inputBinding:
    prefix: --sam
- id: ref
  doc: REQUIRED. Path to reference sequence (including file name).
  type: string
  inputBinding:
    prefix: --ref
- id: output_dir
  doc: REQUIRED. Output directory. XYalign will create a directory structure within
    this directory
  type: string
  inputBinding:
    prefix: --output_dir
- id: chromosomes
  doc: "[CHROMOSOMES [CHROMOSOMES ...]], -c [CHROMOSOMES [CHROMOSOMES ...]] Chromosomes\
    \ to analyze (names must match reference exactly). For humans, we recommend at\
    \ least chr19, chrX, chrY. Generally, we suggest including the sex chromosomes\
    \ and at least one autosome. To analyze all chromosomes use '--chromosomes ALL'\
    \ or '--chromosomes all'."
  type: boolean
  inputBinding:
    prefix: --chromosomes
- id: x_chromosome
  doc: '[X_CHROMOSOME [X_CHROMOSOME ...]], -x [X_CHROMOSOME [X_CHROMOSOME ...]] Names
    of x-linked scaffolds in reference fasta (must match reference exactly).'
  type: boolean
  inputBinding:
    prefix: --x_chromosome
- id: y_chromosome
  doc: '[Y_CHROMOSOME [Y_CHROMOSOME ...]], -y [Y_CHROMOSOME [Y_CHROMOSOME ...]] Names
    of y-linked scaffolds in reference fasta (must match reference exactly). Defaults
    to chrY. Give None if using an assembly without a Y chromosome'
  type: boolean
  inputBinding:
    prefix: --y_chromosome
- id: sample_id
  doc: Name/ID of sample - for use in plot titles and file naming. Default is sample
  type: string
  inputBinding:
    prefix: --sample_id
- id: cpus
  doc: Number of cores/threads to use. Default is 1
  type: string
  inputBinding:
    prefix: --cpus
- id: x_mx
  doc: Memory to be provided to java programs via -Xmx. E.g., use the flag '--xmx
    4g' to pass '-Xmx4g' as a flag when running java programs (currently just repair.sh).
    Default is 'None' (i.e., nothing provided on the command line), which will allow
    repair.sh to automatically allocate memory. Note that if you're using --STRIP_READS
    on deep coverage whole genome data, you might need quite a bit of memory, e.g.
    '-- xmx 16g', '--xmx 32g', or more depending on how many reads are present per
    read group.
  type: string
  inputBinding:
    prefix: --xmx
- id: fast_q_compression
  doc: '{0,1,2,3,4,5,6,7,8,9} Compression level for fastqs output from repair.sh.
    Between (inclusive) 0 and 9. Default is 3. 1 through 9 indicate compression levels.
    If 0, fastqs will be uncompressed.'
  type: boolean
  inputBinding:
    prefix: --fastq_compression
- id: single_end
  doc: Include flag if reads are single-end and NOT paired- end.
  type: boolean
  inputBinding:
    prefix: --single_end
- id: no_cleanup
  doc: Include flag to preserve temporary files.
  type: boolean
  inputBinding:
    prefix: --no_cleanup
- id: prepare_reference
  doc: This flag will limit XYalign to only preparing reference fastas for individuals
    with and without Y chromosomes. These fastas can then be passed with each sample
    to save subsequent processing time.
  type: boolean
  inputBinding:
    prefix: --PREPARE_REFERENCE
- id: chrom_stats
  doc: This flag will limit XYalign to only analyzing provided bam files for depth
    and mapq across entire chromosomes.
  type: boolean
  inputBinding:
    prefix: --CHROM_STATS
- id: analyze_bam
  doc: This flag will limit XYalign to only analyzing the bam file for depth, mapq,
    and (optionally) read balance and outputting plots.
  type: boolean
  inputBinding:
    prefix: --ANALYZE_BAM
- id: characterize_sex_chrom_s
  doc: This flag will limit XYalign to the steps required to characterize sex chromosome
    content (i.e., analyzing the bam for depth, mapq, and read balance and running
    statistical tests to help infer ploidy)
  type: boolean
  inputBinding:
    prefix: --CHARACTERIZE_SEX_CHROMS
- id: remapping
  doc: This flag will limit XYalign to only the steps required to strip reads and
    remap to masked references. If masked references are not provided, they will be
    created.
  type: boolean
  inputBinding:
    prefix: --REMAPPING
- id: strip_reads
  doc: This flag will limit XYalign to only the steps required to strip reads from
    a provided bam file.
  type: boolean
  inputBinding:
    prefix: --STRIP_READS
- id: log_file
  doc: Name of logfile. Will overwrite if exists. Default is sample_xyalign.log
  type: string
  inputBinding:
    prefix: --logfile
- id: reporting_level
  doc: Set level of messages printed to console. Default is 'INFO'. Choose from (in
    decreasing amount of reporting) DEBUG, INFO, ERROR or CRITICAL
  type: string
  inputBinding:
    prefix: --reporting_level
- id: platypus_path
  doc: Path to platypus. Default is 'platypus'. If platypus is not directly callable
    (e.g., '/path/to/platypus' or '/path/to/Playpus.py'), then provide path to python
    as well (e.g., '/path/to/python /path/to/platypus'). In addition, be sure provided
    python is version 2. See the documentation for more information about setting
    up an anaconda environment.
  type: string
  inputBinding:
    prefix: --platypus_path
- id: bwa_path
  doc: Path to bwa. Default is 'bwa'
  type: string
  inputBinding:
    prefix: --bwa_path
- id: sam_tools_path
  doc: Path to samtools. Default is 'samtools'
  type: string
  inputBinding:
    prefix: --samtools_path
- id: repairs_h_path
  doc: Path to bbmap's repair.sh script. Default is 'repair.sh'
  type: string
  inputBinding:
    prefix: --repairsh_path
- id: shuffles_h_path
  doc: Path to bbmap's shuffle.sh script. Default is 'shuffle.sh'
  type: string
  inputBinding:
    prefix: --shufflesh_path
- id: samba_mba_path
  doc: Path to sambamba. Default is 'sambamba'
  type: string
  inputBinding:
    prefix: --sambamba_path
- id: bed_tools_path
  doc: Path to bedtools. Default is 'bedtools'
  type: string
  inputBinding:
    prefix: --bedtools_path
- id: platypus_calling
  doc: 'Platypus calling withing the pipeline (before processing, after processing,
    both, or neither). Options: both, none, before, after.'
  type: string
  inputBinding:
    prefix: --platypus_calling
- id: no_variant_plots
  doc: Include flag to prevent plotting read balance from VCF files.
  type: boolean
  inputBinding:
    prefix: --no_variant_plots
- id: no_bam_analysis
  doc: Include flag to prevent depth/mapq analysis of bam file. Used to isolate platypus_calling.
  type: boolean
  inputBinding:
    prefix: --no_bam_analysis
- id: skip_compatibility_check
  doc: Include flag to prevent check of compatibility between input bam and reference
    fasta
  type: boolean
  inputBinding:
    prefix: --skip_compatibility_check
- id: no_perm_test
  doc: Include flag to turn off permutation tests.
  type: boolean
  inputBinding:
    prefix: --no_perm_test
- id: no_ks_test
  doc: Include flag to turn off KS Two Sample tests.
  type: boolean
  inputBinding:
    prefix: --no_ks_test
- id: no_bootstrap
  doc: Include flag to turn off bootstrap analyses. Requires either --y_present, --y_absent,
    or --sex_chrom_calling_threshold if running full pipeline.
  type: boolean
  inputBinding:
    prefix: --no_bootstrap
- id: variant_site_quality
  doc: Consider all SNPs with a site quality (QUAL) greater than or equal to this
    value. Default is 30.
  type: string
  inputBinding:
    prefix: --variant_site_quality
- id: variant_genotype_quality
  doc: Consider all SNPs with a sample genotype quality greater than or equal to this
    value. Default is 30.
  type: string
  inputBinding:
    prefix: --variant_genotype_quality
- id: variant_depth
  doc: Consider all SNPs with a sample depth greater than or equal to this value.
    Default is 4.
  type: string
  inputBinding:
    prefix: --variant_depth
- id: platypus_log_file
  doc: Prefix to use for Platypus log files. Will default to the sample_id argument
    provided
  type: string
  inputBinding:
    prefix: --platypus_logfile
- id: homogenize_read_balance
  doc: If True, read balance values will be transformed by subtracting each value
    from 1. For example, 0.25 and 0.75 would be treated equivalently. Default is False.
  type: string
  inputBinding:
    prefix: --homogenize_read_balance
- id: min_variant_count
  doc: Minimum number of variants in a window for the read balance of that window
    to be plotted. Note that this does not affect plotting of variant counts. Default
    is 1, though we note that many window averages will be meaningless at this setting.
  type: long
  inputBinding:
    prefix: --min_variant_count
- id: reference_mask
  doc: '[REFERENCE_MASK [REFERENCE_MASK ...]] Bed file containing regions to replace
    with Ns in the sex chromosome reference. Examples might include the pseudoautosomal
    regions on the Y to force all mapping/calling on those regions of the X chromosome.
    Default is None.'
  type: boolean
  inputBinding:
    prefix: --reference_mask
- id: xx_ref_out_name
  doc: Desired name for masked output fasta for samples WITHOUT a Y chromosome (e.g.,
    XX, XXX, XO, etc.). Defaults to 'xyalign_noY.masked.fa'. Will be output in the
    XYalign reference directory.
  type: string
  inputBinding:
    prefix: --xx_ref_out_name
- id: xy_ref_out_name
  doc: Desired name for masked output fasta for samples WITH a Y chromosome (e.g.,
    XY, XXY, etc.). Defaults to 'xyalign_withY.masked.fa'. Will be output in the XYalign
    reference directory.
  type: string
  inputBinding:
    prefix: --xy_ref_out_name
- id: xx_ref_out
  doc: Desired path to and name of masked output fasta for samples WITHOUT a Y chromosome
    (e.g., XX, XXX, XO, etc.). Overwrites if exists. Use if you would like output
    somewhere other than XYalign reference directory. Otherwise, use --xx_ref_name.
  type: string
  inputBinding:
    prefix: --xx_ref_out
- id: xy_ref_out
  doc: Desired path to and name of masked output fasta for samples WITH a Y chromosome
    (e.g., XY, XXY, etc.). Overwrites if exists. Use if you would like output somewhere
    other than XYalign reference directory. Otherwise, use --xy_ref_name.
  type: string
  inputBinding:
    prefix: --xy_ref_out
- id: xx_ref_in
  doc: Path to preprocessed reference fasta to be used for remapping in X0 or XX samples.
    Default is None. If none, will produce a sample-specific reference for remapping.
  type: string
  inputBinding:
    prefix: --xx_ref_in
- id: xy_ref_in
  doc: Path to preprocessed reference fasta to be used for remapping in samples containing
    Y chromosome. Default is None. If none, will produce a sample-specific reference
    for remapping.
  type: string
  inputBinding:
    prefix: --xy_ref_in
- id: bwa_index
  doc: If True, index with BWA during PREPARE_REFERENCE. Only relevantwhen running
    the PREPARE_REFERENCE module by itself. Default is False.
  type: string
  inputBinding:
    prefix: --bwa_index
- id: read_group_id
  doc: If read groups are present in a bam file, they are used by default in remapping
    steps. However, if read groups are not present in a file, there are two options
    for proceeding. If '--read_group_id None' is provided (case sensitive), then no
    read groups will be used in subsequent mapping steps. Otherwise, any other string
    provided to this flag will be used as a read group ID. Default is '--read_group_id
    xyalign'
  type: string
  inputBinding:
    prefix: --read_group_id
- id: bwa_flags
  doc: "Provide a string (in quotes, with spaces between arguments) for additional\
    \ flags desired for BWA mapping (other than -R and -t). Example: '-M -T 20 -v\
    \ 4'. Note that those are spaces between arguments."
  type: string
  inputBinding:
    prefix: --bwa_flags
- id: sex_chrom_bam_only
  doc: This flag skips merging the new sex chromosome bam file back into the original
    bam file (i.e., sex chrom swapping). This will output a bam file containing only
    the newly remapped sex chromosomes.
  type: boolean
  inputBinding:
    prefix: --sex_chrom_bam_only
- id: sex_chrom_calling_threshold
  doc: This is the *maximum* filtered X/Y depth ratio for an individual to be considered
    as having heterogametic sex chromsomes (e.g., XY) for the REMAPPING module of
    XYalign. Note here that X and Y chromosomes are simply the chromosomes that have
    been designated as X and Y via --x_chromosome and --y_chromosome. Keep in mind
    that the ideal threshold will vary according to sex determination mechanism, sequence
    homology between the sex chromosomes, reference genome, sequencing methods, etc.
    See documentation for more detail. Default is 2.0, which we found to be reasonable
    for exome, low- coverage whole-genome, and high-coverage whole-genome human data.
  type: string
  inputBinding:
    prefix: --sex_chrom_calling_threshold
- id: y_present
  doc: Overrides sex chr estimation by XYalign and remaps with Y present.
  type: boolean
  inputBinding:
    prefix: --y_present
- id: y_absent
  doc: Overrides sex chr estimation by XY align and remaps with Y absent.
  type: boolean
  inputBinding:
    prefix: --y_absent
- id: window_size
  doc: Window size (integer) for sliding window calculations. Default is 50000. Default
    is None. If set to None, will use targets provided using --target_bed.
  type: string
  inputBinding:
    prefix: --window_size
- id: target_bed
  doc: Bed file containing targets to use in sliding window analyses instead of a
    fixed window width. Either this or --window_size needs to be set. Default is None,
    which will use window size provided with --window_size. If not None, and --window_size
    is None, analyses will use targets in provided file. Must be typical bed format,
    0-based indexing, with the first three columns containing the chromosome name,
    start coordinate, stop coordinate.
  type: string
  inputBinding:
    prefix: --target_bed
- id: exact_depth
  doc: Calculate exact depth within windows, else use much faster approximation. *Currently
    exact is not implemented*. Default is False.
  type: boolean
  inputBinding:
    prefix: --exact_depth
- id: whole_genome_threshold
  doc: This flag will calculate the depth filter threshold based on all values from
    across the genome. By default, thresholds are calculated per chromosome.
  type: boolean
  inputBinding:
    prefix: --whole_genome_threshold
- id: mapq_cut_off
  doc: Minimum mean mapq threshold for a window to be considered high quality. Default
    is 20.
  type: string
  inputBinding:
    prefix: --mapq_cutoff
- id: min_depth_filter
  doc: Minimum depth threshold for a window to be considered high quality. Calculated
    as mean depth * min_depth_filter. So, a min_depth_filter of 0.2 would require
    at least a minimum depth of 2 if the mean depth was 10. Default is 0.0 to consider
    all windows.
  type: long
  inputBinding:
    prefix: --min_depth_filter
- id: max_depth_filter
  doc: Maximum depth threshold for a window to be considered high quality. Calculated
    as mean depth * max_depth_filter. So, a max_depth_filter of 4 would require depths
    to be less than or equal to 40 if the mean depth was 10. Default is 10000.0 to
    consider all windows.
  type: long
  inputBinding:
    prefix: --max_depth_filter
- id: num_permutations
  doc: Number of permutations to use for permutation analyses. Default is 10000
  type: string
  inputBinding:
    prefix: --num_permutations
- id: num_bootstraps
  doc: Number of bootstrap replicates to use when bootstrapping mean depth ratios
    among chromosomes. Default is 10000
  type: string
  inputBinding:
    prefix: --num_bootstraps
- id: ignore_duplicates
  doc: Ignore duplicate reads in bam analyses. Default is to include duplicates.
  type: boolean
  inputBinding:
    prefix: --ignore_duplicates
- id: marker_size
  doc: Marker size for genome-wide plots in matplotlib. Default is 10.
  type: string
  inputBinding:
    prefix: --marker_size
- id: marker_transparency
  doc: Transparency of markers in genome-wide plots. Alpha in matplotlib. Default
    is 0.5
  type: string
  inputBinding:
    prefix: --marker_transparency
- id: coordinate_scale
  doc: For genome-wide scatter plots, divide all coordinates by this value.Default
    is 1000000, which will plot everything in megabases.
  type: string
  inputBinding:
    prefix: --coordinate_scale
- id: include_fixed
  doc: Default is False, which removes read balances less than or equal to 0.05 and
    equal to 1.0 for histogram plotting. True will include all values. Extreme values
    removed by default because they often swamp out the signal of the rest of the
    distribution.
  type: string
  inputBinding:
    prefix: --include_fixed
- id: use_counts
  doc: If True, get counts of reads per chromosome for CHROM_STATS, rather than calculating
    mean depth and mapq. Much faster, but provides less information. Default is False
  type: boolean
  inputBinding:
    prefix: --use_counts
outputs: []
cwlVersion: v1.1
baseCommand:
- xyalign
