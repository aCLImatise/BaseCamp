#!/usr/bin/env cwl-runner

baseCommand:
- xyalign
class: CommandLineTool
cwlVersion: v1.0
id: xyalign
inputs:
- doc: '[BAM [BAM ...]] Full path to input bam files. If more than one provided, only
    the first will be used for modules other than --CHROM_STATS'
  id: bam
  inputBinding:
    prefix: --bam
  type: boolean
- doc: '[CRAM [CRAM ...]] Full path to input cram files. If more than one provided,
    only the first will be used for modules other than --CHROM_STATS. Not currently
    supported.'
  id: cram
  inputBinding:
    prefix: --cram
  type: boolean
- doc: '[SAM [SAM ...]] Full path to input sam files. If more than one provided, only
    the first will be used for modules other than --CHROM_STATS. Not currently supported.'
  id: sam
  inputBinding:
    prefix: --sam
  type: boolean
- doc: REQUIRED. Path to reference sequence (including file name).
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: REQUIRED. Output directory. XYalign will create a directory structure within
    this directory
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
- doc: "[CHROMOSOMES [CHROMOSOMES ...]], -c [CHROMOSOMES [CHROMOSOMES ...]] Chromosomes\
    \ to analyze (names must match reference exactly). For humans, we recommend at\
    \ least chr19, chrX, chrY. Generally, we suggest including the sex chromosomes\
    \ and at least one autosome. To analyze all chromosomes use '--chromosomes ALL'\
    \ or '--chromosomes all'."
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type: boolean
- doc: '[X_CHROMOSOME [X_CHROMOSOME ...]], -x [X_CHROMOSOME [X_CHROMOSOME ...]] Names
    of x-linked scaffolds in reference fasta (must match reference exactly).'
  id: x_chromosome
  inputBinding:
    prefix: --x_chromosome
  type: boolean
- doc: '[Y_CHROMOSOME [Y_CHROMOSOME ...]], -y [Y_CHROMOSOME [Y_CHROMOSOME ...]] Names
    of y-linked scaffolds in reference fasta (must match reference exactly). Defaults
    to chrY. Give None if using an assembly without a Y chromosome'
  id: y_chromosome
  inputBinding:
    prefix: --y_chromosome
  type: boolean
- doc: Name/ID of sample - for use in plot titles and file naming. Default is sample
  id: sample_id
  inputBinding:
    prefix: --sample_id
  type: string
- doc: Number of cores/threads to use. Default is 1
  id: cpus
  inputBinding:
    prefix: --cpus
  type: string
- doc: Memory to be provided to java programs via -Xmx. E.g., use the flag '--xmx
    4g' to pass '-Xmx4g' as a flag when running java programs (currently just repair.sh).
    Default is 'None' (i.e., nothing provided on the command line), which will allow
    repair.sh to automatically allocate memory. Note that if you're using --STRIP_READS
    on deep coverage whole genome data, you might need quite a bit of memory, e.g.
    '-- xmx 16g', '--xmx 32g', or more depending on how many reads are present per
    read group.
  id: x_mx
  inputBinding:
    prefix: --xmx
  type: string
- doc: '{0,1,2,3,4,5,6,7,8,9} Compression level for fastqs output from repair.sh.
    Between (inclusive) 0 and 9. Default is 3. 1 through 9 indicate compression levels.
    If 0, fastqs will be uncompressed.'
  id: fast_q_compression
  inputBinding:
    prefix: --fastq_compression
  type: boolean
- doc: Include flag if reads are single-end and NOT paired- end.
  id: single_end
  inputBinding:
    prefix: --single_end
  type: boolean
- doc: Include flag to preserve temporary files.
  id: no_cleanup
  inputBinding:
    prefix: --no_cleanup
  type: boolean
- doc: This flag will limit XYalign to only preparing reference fastas for individuals
    with and without Y chromosomes. These fastas can then be passed with each sample
    to save subsequent processing time.
  id: prepare_reference
  inputBinding:
    prefix: --PREPARE_REFERENCE
  type: boolean
- doc: This flag will limit XYalign to only analyzing provided bam files for depth
    and mapq across entire chromosomes.
  id: chrom_stats
  inputBinding:
    prefix: --CHROM_STATS
  type: boolean
- doc: This flag will limit XYalign to only analyzing the bam file for depth, mapq,
    and (optionally) read balance and outputting plots.
  id: analyze_bam
  inputBinding:
    prefix: --ANALYZE_BAM
  type: boolean
- doc: This flag will limit XYalign to the steps required to characterize sex chromosome
    content (i.e., analyzing the bam for depth, mapq, and read balance and running
    statistical tests to help infer ploidy)
  id: characterize_sex_chrom_s
  inputBinding:
    prefix: --CHARACTERIZE_SEX_CHROMS
  type: boolean
- doc: This flag will limit XYalign to only the steps required to strip reads and
    remap to masked references. If masked references are not provided, they will be
    created.
  id: remapping
  inputBinding:
    prefix: --REMAPPING
  type: boolean
- doc: This flag will limit XYalign to only the steps required to strip reads from
    a provided bam file.
  id: strip_reads
  inputBinding:
    prefix: --STRIP_READS
  type: boolean
- doc: Name of logfile. Will overwrite if exists. Default is sample_xyalign.log
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: Set level of messages printed to console. Default is 'INFO'. Choose from (in
    decreasing amount of reporting) DEBUG, INFO, ERROR or CRITICAL
  id: reporting_level
  inputBinding:
    prefix: --reporting_level
  type: string
- doc: Path to platypus. Default is 'platypus'. If platypus is not directly callable
    (e.g., '/path/to/platypus' or '/path/to/Playpus.py'), then provide path to python
    as well (e.g., '/path/to/python /path/to/platypus'). In addition, be sure provided
    python is version 2. See the documentation for more information about setting
    up an anaconda environment.
  id: platypus_path
  inputBinding:
    prefix: --platypus_path
  type: string
- doc: Path to bwa. Default is 'bwa'
  id: bwa_path
  inputBinding:
    prefix: --bwa_path
  type: string
- doc: Path to samtools. Default is 'samtools'
  id: sam_tools_path
  inputBinding:
    prefix: --samtools_path
  type: string
- doc: Path to bbmap's repair.sh script. Default is 'repair.sh'
  id: repairs_h_path
  inputBinding:
    prefix: --repairsh_path
  type: string
- doc: Path to bbmap's shuffle.sh script. Default is 'shuffle.sh'
  id: shuffles_h_path
  inputBinding:
    prefix: --shufflesh_path
  type: string
- doc: Path to sambamba. Default is 'sambamba'
  id: samba_mba_path
  inputBinding:
    prefix: --sambamba_path
  type: string
- doc: Path to bedtools. Default is 'bedtools'
  id: bed_tools_path
  inputBinding:
    prefix: --bedtools_path
  type: string
- doc: 'Platypus calling withing the pipeline (before processing, after processing,
    both, or neither). Options: both, none, before, after.'
  id: platypus_calling
  inputBinding:
    prefix: --platypus_calling
  type: string
- doc: Include flag to prevent plotting read balance from VCF files.
  id: no_variant_plots
  inputBinding:
    prefix: --no_variant_plots
  type: boolean
- doc: Include flag to prevent depth/mapq analysis of bam file. Used to isolate platypus_calling.
  id: no_bam_analysis
  inputBinding:
    prefix: --no_bam_analysis
  type: boolean
- doc: Include flag to prevent check of compatibility between input bam and reference
    fasta
  id: skip_compatibility_check
  inputBinding:
    prefix: --skip_compatibility_check
  type: boolean
- doc: Include flag to turn off permutation tests.
  id: no_perm_test
  inputBinding:
    prefix: --no_perm_test
  type: boolean
- doc: Include flag to turn off KS Two Sample tests.
  id: no_ks_test
  inputBinding:
    prefix: --no_ks_test
  type: boolean
- doc: Include flag to turn off bootstrap analyses. Requires either --y_present, --y_absent,
    or --sex_chrom_calling_threshold if running full pipeline.
  id: no_bootstrap
  inputBinding:
    prefix: --no_bootstrap
  type: boolean
- doc: Consider all SNPs with a site quality (QUAL) greater than or equal to this
    value. Default is 30.
  id: variant_site_quality
  inputBinding:
    prefix: --variant_site_quality
  type: string
- doc: Consider all SNPs with a sample genotype quality greater than or equal to this
    value. Default is 30.
  id: variant_genotype_quality
  inputBinding:
    prefix: --variant_genotype_quality
  type: string
- doc: Consider all SNPs with a sample depth greater than or equal to this value.
    Default is 4.
  id: variant_depth
  inputBinding:
    prefix: --variant_depth
  type: string
- doc: Prefix to use for Platypus log files. Will default to the sample_id argument
    provided
  id: platypus_log_file
  inputBinding:
    prefix: --platypus_logfile
  type: string
- doc: If True, read balance values will be transformed by subtracting each value
    from 1. For example, 0.25 and 0.75 would be treated equivalently. Default is False.
  id: homogenize_read_balance
  inputBinding:
    prefix: --homogenize_read_balance
  type: string
- doc: Minimum number of variants in a window for the read balance of that window
    to be plotted. Note that this does not affect plotting of variant counts. Default
    is 1, though we note that many window averages will be meaningless at this setting.
  id: min_variant_count
  inputBinding:
    prefix: --min_variant_count
  type: long
- doc: '[REFERENCE_MASK [REFERENCE_MASK ...]] Bed file containing regions to replace
    with Ns in the sex chromosome reference. Examples might include the pseudoautosomal
    regions on the Y to force all mapping/calling on those regions of the X chromosome.
    Default is None.'
  id: reference_mask
  inputBinding:
    prefix: --reference_mask
  type: boolean
- doc: Desired name for masked output fasta for samples WITHOUT a Y chromosome (e.g.,
    XX, XXX, XO, etc.). Defaults to 'xyalign_noY.masked.fa'. Will be output in the
    XYalign reference directory.
  id: xx_ref_out_name
  inputBinding:
    prefix: --xx_ref_out_name
  type: string
- doc: Desired name for masked output fasta for samples WITH a Y chromosome (e.g.,
    XY, XXY, etc.). Defaults to 'xyalign_withY.masked.fa'. Will be output in the XYalign
    reference directory.
  id: xy_ref_out_name
  inputBinding:
    prefix: --xy_ref_out_name
  type: string
- doc: Desired path to and name of masked output fasta for samples WITHOUT a Y chromosome
    (e.g., XX, XXX, XO, etc.). Overwrites if exists. Use if you would like output
    somewhere other than XYalign reference directory. Otherwise, use --xx_ref_name.
  id: xx_ref_out
  inputBinding:
    prefix: --xx_ref_out
  type: string
- doc: Desired path to and name of masked output fasta for samples WITH a Y chromosome
    (e.g., XY, XXY, etc.). Overwrites if exists. Use if you would like output somewhere
    other than XYalign reference directory. Otherwise, use --xy_ref_name.
  id: xy_ref_out
  inputBinding:
    prefix: --xy_ref_out
  type: string
- doc: Path to preprocessed reference fasta to be used for remapping in X0 or XX samples.
    Default is None. If none, will produce a sample-specific reference for remapping.
  id: xx_ref_in
  inputBinding:
    prefix: --xx_ref_in
  type: string
- doc: Path to preprocessed reference fasta to be used for remapping in samples containing
    Y chromosome. Default is None. If none, will produce a sample-specific reference
    for remapping.
  id: xy_ref_in
  inputBinding:
    prefix: --xy_ref_in
  type: string
- doc: If True, index with BWA during PREPARE_REFERENCE. Only relevantwhen running
    the PREPARE_REFERENCE module by itself. Default is False.
  id: bwa_index
  inputBinding:
    prefix: --bwa_index
  type: string
- doc: If read groups are present in a bam file, they are used by default in remapping
    steps. However, if read groups are not present in a file, there are two options
    for proceeding. If '--read_group_id None' is provided (case sensitive), then no
    read groups will be used in subsequent mapping steps. Otherwise, any other string
    provided to this flag will be used as a read group ID. Default is '--read_group_id
    xyalign'
  id: read_group_id
  inputBinding:
    prefix: --read_group_id
  type: string
- doc: "Provide a string (in quotes, with spaces between arguments) for additional\
    \ flags desired for BWA mapping (other than -R and -t). Example: '-M -T 20 -v\
    \ 4'. Note that those are spaces between arguments."
  id: bwa_flags
  inputBinding:
    prefix: --bwa_flags
  type: string
- doc: This flag skips merging the new sex chromosome bam file back into the original
    bam file (i.e., sex chrom swapping). This will output a bam file containing only
    the newly remapped sex chromosomes.
  id: sex_chrom_bam_only
  inputBinding:
    prefix: --sex_chrom_bam_only
  type: boolean
- doc: This is the *maximum* filtered X/Y depth ratio for an individual to be considered
    as having heterogametic sex chromsomes (e.g., XY) for the REMAPPING module of
    XYalign. Note here that X and Y chromosomes are simply the chromosomes that have
    been designated as X and Y via --x_chromosome and --y_chromosome. Keep in mind
    that the ideal threshold will vary according to sex determination mechanism, sequence
    homology between the sex chromosomes, reference genome, sequencing methods, etc.
    See documentation for more detail. Default is 2.0, which we found to be reasonable
    for exome, low- coverage whole-genome, and high-coverage whole-genome human data.
  id: sex_chrom_calling_threshold
  inputBinding:
    prefix: --sex_chrom_calling_threshold
  type: string
- doc: Overrides sex chr estimation by XYalign and remaps with Y present.
  id: y_present
  inputBinding:
    prefix: --y_present
  type: boolean
- doc: Overrides sex chr estimation by XY align and remaps with Y absent.
  id: y_absent
  inputBinding:
    prefix: --y_absent
  type: boolean
- doc: Window size (integer) for sliding window calculations. Default is 50000. Default
    is None. If set to None, will use targets provided using --target_bed.
  id: window_size
  inputBinding:
    prefix: --window_size
  type: string
- doc: Bed file containing targets to use in sliding window analyses instead of a
    fixed window width. Either this or --window_size needs to be set. Default is None,
    which will use window size provided with --window_size. If not None, and --window_size
    is None, analyses will use targets in provided file. Must be typical bed format,
    0-based indexing, with the first three columns containing the chromosome name,
    start coordinate, stop coordinate.
  id: target_bed
  inputBinding:
    prefix: --target_bed
  type: string
- doc: Calculate exact depth within windows, else use much faster approximation. *Currently
    exact is not implemented*. Default is False.
  id: exact_depth
  inputBinding:
    prefix: --exact_depth
  type: boolean
- doc: This flag will calculate the depth filter threshold based on all values from
    across the genome. By default, thresholds are calculated per chromosome.
  id: whole_genome_threshold
  inputBinding:
    prefix: --whole_genome_threshold
  type: boolean
- doc: Minimum mean mapq threshold for a window to be considered high quality. Default
    is 20.
  id: mapq_cut_off
  inputBinding:
    prefix: --mapq_cutoff
  type: string
- doc: Minimum depth threshold for a window to be considered high quality. Calculated
    as mean depth * min_depth_filter. So, a min_depth_filter of 0.2 would require
    at least a minimum depth of 2 if the mean depth was 10. Default is 0.0 to consider
    all windows.
  id: min_depth_filter
  inputBinding:
    prefix: --min_depth_filter
  type: long
- doc: Maximum depth threshold for a window to be considered high quality. Calculated
    as mean depth * max_depth_filter. So, a max_depth_filter of 4 would require depths
    to be less than or equal to 40 if the mean depth was 10. Default is 10000.0 to
    consider all windows.
  id: max_depth_filter
  inputBinding:
    prefix: --max_depth_filter
  type: long
- doc: Number of permutations to use for permutation analyses. Default is 10000
  id: num_permutations
  inputBinding:
    prefix: --num_permutations
  type: string
- doc: Number of bootstrap replicates to use when bootstrapping mean depth ratios
    among chromosomes. Default is 10000
  id: num_bootstraps
  inputBinding:
    prefix: --num_bootstraps
  type: string
- doc: Ignore duplicate reads in bam analyses. Default is to include duplicates.
  id: ignore_duplicates
  inputBinding:
    prefix: --ignore_duplicates
  type: boolean
- doc: Marker size for genome-wide plots in matplotlib. Default is 10.
  id: marker_size
  inputBinding:
    prefix: --marker_size
  type: string
- doc: Transparency of markers in genome-wide plots. Alpha in matplotlib. Default
    is 0.5
  id: marker_transparency
  inputBinding:
    prefix: --marker_transparency
  type: string
- doc: For genome-wide scatter plots, divide all coordinates by this value.Default
    is 1000000, which will plot everything in megabases.
  id: coordinate_scale
  inputBinding:
    prefix: --coordinate_scale
  type: string
- doc: Default is False, which removes read balances less than or equal to 0.05 and
    equal to 1.0 for histogram plotting. True will include all values. Extreme values
    removed by default because they often swamp out the signal of the rest of the
    distribution.
  id: include_fixed
  inputBinding:
    prefix: --include_fixed
  type: string
- doc: If True, get counts of reads per chromosome for CHROM_STATS, rather than calculating
    mean depth and mapq. Much faster, but provides less information. Default is False
  id: use_counts
  inputBinding:
    prefix: --use_counts
  type: boolean
