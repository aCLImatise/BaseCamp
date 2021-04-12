class: CommandLineTool
id: GangSTR.cwl
inputs:
- id: in_bam
  doc: <file.bam,[file2.bam]>    Comma separated list of input BAM files
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_ref
  doc: <genome.fa>       FASTA file for the reference genome
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_regions
  doc: <regions.bed>     BED file containing TR coordinates
  type: boolean?
  inputBinding:
    prefix: --regions
- id: in_out
  doc: <outprefix>       Prefix to name output files
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_targeted
  doc: Targeted mode
  type: boolean?
  inputBinding:
    prefix: --targeted
- id: in_chrom
  doc: Only genotype regions on this chromosome
  type: boolean?
  inputBinding:
    prefix: --chrom
- id: in_bam_s_amps
  doc: <string>          Comma separated list of sample IDs for --bam
  type: boolean?
  inputBinding:
    prefix: --bam-samps
- id: in_samp_sex
  doc: <string>          Comma separated list of sample sex for each sample ID (--bam-samps
    must be provided)
  type: boolean?
  inputBinding:
    prefix: --samp-sex
- id: in_str_info
  doc: <string>          Tab file with additional per-STR info (see docs)
  type: boolean?
  inputBinding:
    prefix: --str-info
- id: in_period
  doc: <string>          Only genotype loci with periods (motif lengths) in this comma-separated
    list.
  type: boolean?
  inputBinding:
    prefix: --period
- id: in_skip_q_score
  doc: Skip calculation of Q-score
  type: boolean?
  inputBinding:
    prefix: --skip-qscore
- id: in_read_length
  doc: '<int>             Read length. Default: -1'
  type: boolean?
  inputBinding:
    prefix: --readlength
- id: in_coverage
  doc: <float>           Average coverage. must be set for exome/targeted data. Comma
    separated list to specify for each BAM
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_model_gc_coverage
  doc: Model coverage as a function of GC content. Requires genome-wide data
  type: boolean?
  inputBinding:
    prefix: --model-gc-coverage
- id: in_insert_mean
  doc: <float>           Fragment length mean. Comma separated list to specify for
    each BAM separately.
  type: boolean?
  inputBinding:
    prefix: --insertmean
- id: in_inserts_dev
  doc: <float>           Fragment length standard deviation. Comma separated list
    to specify for each BAM separately.
  type: boolean?
  inputBinding:
    prefix: --insertsdev
- id: in_nonuniform
  doc: Indicate whether data has non-uniform coverage (i.e., exome)
  type: boolean?
  inputBinding:
    prefix: --nonuniform
- id: in_min_sample_reads
  doc: Minimum number of reads per sample.
  type: long?
  inputBinding:
    prefix: --min-sample-reads
- id: in_frr_weight
  doc: '<float>           Weight for FRR reads. Default: 1'
  type: boolean?
  inputBinding:
    prefix: --frrweight
- id: in_encl_weight
  doc: '<float>           Weight for enclosing reads. Default: 1'
  type: boolean?
  inputBinding:
    prefix: --enclweight
- id: in_span_weight
  doc: '<float>           Weight for spanning reads. Default: 1'
  type: boolean?
  inputBinding:
    prefix: --spanweight
- id: in_flank_weight
  doc: 'Weight for flanking reads. Default: 1'
  type: double?
  inputBinding:
    prefix: --flankweight
- id: in_ploidy
  doc: '<int>             Indicate whether data is haploid (1) or diploid (2). Default:
    -1'
  type: boolean?
  inputBinding:
    prefix: --ploidy
- id: in_skip_off_target
  doc: Skip off target regions included in the BED file.
  type: boolean?
  inputBinding:
    prefix: --skipofftarget
- id: in_read_prob_mode
  doc: Use only read probability (ignore class probability)
  type: boolean?
  inputBinding:
    prefix: --read-prob-mode
- id: in_numb_strap
  doc: '<int>             Number of bootstrap samples. Default: 100'
  type: boolean?
  inputBinding:
    prefix: --numbstrap
- id: in_grid_threshold
  doc: 'Use optimization rather than grid search to find MLE if more than this many
    possible alleles. Default: 10000'
  type: long?
  inputBinding:
    prefix: --grid-threshold
- id: in_rescue_count
  doc: 'Number of regions that GangSTR attempts to rescue mates from (excluding off-target
    regions) Default: 0'
  type: long?
  inputBinding:
    prefix: --rescue-count
- id: in_max_proc_read
  doc: 'Maximum number of processed reads per sample before a region is skipped. Default:
    3000'
  type: long?
  inputBinding:
    prefix: --max-proc-read
- id: in_min_score
  doc: '<int>             Minimum alignment score (out of 100). Default: 75'
  type: boolean?
  inputBinding:
    prefix: --minscore
- id: in_min_match
  doc: '<int>             Minimum number of matching basepairs on each end of enclosing
    reads. Default: 5'
  type: boolean?
  inputBinding:
    prefix: --minmatch
- id: in_stutter_up
  doc: '<float>           Stutter insertion probability. Default: 0.05'
  type: boolean?
  inputBinding:
    prefix: --stutterup
- id: in_stutter_down
  doc: 'Stutter deletion probability. Default: 0.05'
  type: double?
  inputBinding:
    prefix: --stutterdown
- id: in_stutter_prob
  doc: 'Stutter step size parameter. Default: 0.9'
  type: double?
  inputBinding:
    prefix: --stutterprob
- id: in_output_bootstraps
  doc: Output file with bootstrap samples
  type: File?
  inputBinding:
    prefix: --output-bootstraps
- id: in_output_read_info
  doc: Output read class info (for debugging)
  type: boolean?
  inputBinding:
    prefix: --output-readinfo
- id: in_include_ggl
  doc: Output GGL (special GL field) in VCF
  type: boolean?
  inputBinding:
    prefix: --include-ggl
- id: in_seed
  doc: Random number generator initial seed
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_verbose
  doc: Print out useful progress messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very
  doc: Print out more detailed progress messages for debugging
  type: boolean?
  inputBinding:
    prefix: --very
- id: in_quiet
  doc: Don't print anything
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bootstraps
  doc: Output file with bootstrap samples
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bootstraps)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gangstr:2.5.0--h2ab8aec_0
cwlVersion: v1.1
baseCommand:
- GangSTR
