class: CommandLineTool
id: epic2.cwl
inputs:
- id: treatment
  doc: 'Treatment (pull-down) file(s) in one of these formats: bed, bedpe, bed.gz,
    bedpe.gz or (single-end) bam, sam. Mixing file formats is allowed.'
  type: string[]
  inputBinding:
    prefix: --treatment
- id: control
  doc: 'Control (input) file(s) in one of these formats: bed, bedpe, bed.gz, bedpe.gz
    or (single-end) bam, sam. Mixing file formats is allowed.'
  type: string[]
  inputBinding:
    prefix: --control
- id: genome
  doc: 'Which genome to analyze. Default: hg19. If --chromsizes and --egf flag is
    given, --genome is not required.'
  type: string
  inputBinding:
    prefix: --genome
- id: keep_duplicates
  doc: 'Keep reads mapping to the same position on the same strand within a library.
    Default: False.'
  type: boolean
  inputBinding:
    prefix: --keep-duplicates
- id: original_algorithm
  doc: Use the original SICER algorithm, without the epic2 fix. This will use all
    reads in your files to compute the p-values, including those falling outside the
    genome boundaries.
  type: boolean
  inputBinding:
    prefix: --original-algorithm
- id: bin_size
  doc: Size of the windows to scan the genome. BIN-SIZE is the smallest possible island.
    Default 200.
  type: string
  inputBinding:
    prefix: --bin-size
- id: gaps_allowed
  doc: 'This number is multiplied by the window size to determine the number of gaps
    (ineligible windows) allowed between two eligible windows. Must be an integer.
    Default: 3.'
  type: string
  inputBinding:
    prefix: --gaps-allowed
- id: fragment_size
  doc: (Single end reads only) Size of the sequenced fragment. Each read is extended
    half the fragment size from the 5' end. Default 150 (i.e. extend by 75).
  type: string
  inputBinding:
    prefix: --fragment-size
- id: false_discovery_rate_cut_off
  doc: Remove all islands with an FDR above cutoff. Default 0.05.
  type: string
  inputBinding:
    prefix: --false-discovery-rate-cutoff
- id: effective_genome_fraction
  doc: Use a different effective genome fraction than the one included in epic2. The
    default value depends on the genome and readlength, but is a number between 0
    and 1.
  type: string
  inputBinding:
    prefix: --effective-genome-fraction
- id: chrom_sizes
  doc: 'Set the chromosome lengths yourself in a file with two columns: chromosome
    names and sizes. Useful to analyze custom genomes, assemblies or simulated data.
    Only chromosomes included in the file will be analyzed.'
  type: string
  inputBinding:
    prefix: --chromsizes
- id: e_value
  doc: 'The E-value controls the genome-wide error rate of identified islands under
    the random background assumption. Should be used when not using a control library.
    Default: 1000.'
  type: string
  inputBinding:
    prefix: --e-value
- id: required_flag
  doc: (bam only.) Keep reads with these bits set in flag. Same as `samtools view
    -f`. Default 0
  type: string
  inputBinding:
    prefix: --required-flag
- id: filter_flag
  doc: '(bam only.) Discard reads with these bits set in flag. Same as `samtools view
    -F`. Default 1540 (hex: 0x604). See https://broadinstitute.github.io/picard/explain-
    flags.html for more info.'
  type: string
  inputBinding:
    prefix: --filter-flag
- id: mapq
  doc: (bam only.) Discard reads with mapping quality lower than this. Default 5.
  type: string
  inputBinding:
    prefix: --mapq
- id: autodetect_chrom_s
  doc: (bam only.) Autodetect chromosomes from bam file. Use with --discard-chromosomes
    flag to avoid non-canonical chromosomes.
  type: boolean
  inputBinding:
    prefix: --autodetect-chroms
- id: discard_chromosomes_pattern
  doc: (bam only.) Discard reads from chromosomes matching this pattern. Default '_'.
    Note that if you are not interested in the results from non-canonical chromosomes,
    you should ensure they are removed with this flag, otherwise they will make the
    statistical analysis too stringent.
  type: string
  inputBinding:
    prefix: --discard-chromosomes-pattern
- id: output
  doc: 'File to write results to. Default: stdout.'
  type: string
  inputBinding:
    prefix: --output
- id: original_statistics
  doc: Use the original SICER way of computing the statistics. Like SICER itself,
    this method raises an error on large datasets. Only included for debugging- purposes.
  type: boolean
  inputBinding:
    prefix: --original-statistics
- id: quiet
  doc: Do not write output messages to stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: example
  doc: Show the paths of the example data and an example command.
  type: boolean
  inputBinding:
    prefix: --example
outputs: []
cwlVersion: v1.1
baseCommand:
- epic2
