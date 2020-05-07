class: CommandLineTool
id: bamCoverage.cwl
inputs:
- id: bam
  doc: 'file, -b BAM file BAM file to process (default: None)'
  type: string
  inputBinding:
    prefix: --bam
- id: out_filename
  doc: 'Output file name. (default: None)'
  type: File
  inputBinding:
    prefix: --outFileName
- id: out_file_format
  doc: 'Output file type. Either "bigwig" or "bedgraph". (default: bigwig)'
  type: string
  inputBinding:
    prefix: --outFileFormat
- id: number_of_processors
  doc: 'Number of processors to use. Type "max/2" to use half the maximum number of
    processors or "max" to use all available processors. (Default: 1)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: verbose
  doc: 'Set to see processing messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: effective_genome_size
  doc: 'The effective genome size is the portion of the genome that is mappable. Large
    fractions of the genome are stretches of NNNN that should be discarded. Also,
    if repetitive regions were not included in the mapping of reads, the effective
    genome size needs to be adjusted accordingly. A table of values is available here:
    http ://deeptools.readthedocs.io/en/latest/content/feature/ effectiveGenomeSize.html
    . (default: None)'
  type: string
  inputBinding:
    prefix: --effectiveGenomeSize
- id: normalize_using
  doc: 'Use one of the entered methods to normalize the number of reads per bin. By
    default, no normalization is performed. RPKM = Reads Per Kilobase per Million
    mapped reads; CPM = Counts Per Million mapped reads, same as CPM in RNA-seq; BPM
    = Bins Per Million mapped reads, same as TPM in RNA-seq; RPGC = reads per genomic
    content (1x normalization); Mapped reads are considered after blacklist filtering
    (if applied). RPKM (per bin) = number of reads per bin / (number of mapped reads
    (in millions) * bin length (kb)). CPM (per bin) = number of reads per bin / number
    of mapped reads (in millions). BPM (per bin) = number of reads per bin / sum of
    all reads per bin (in millions). RPGC (per bin) = number of reads per bin / scaling
    factor for 1x average coverage. None = the default and equivalent to not setting
    this option at all. This scaling factor, in turn, is determined from the sequencing
    depth: (total number of mapped reads * fragment length) / effective genome size.
    The scaling factor used is the inverse of the sequencing depth computed for the
    sample to match the 1x coverage. This option requires --effectiveGenomeSize. Each
    read is considered independently, if you want to only count one mate from a pair
    in paired-end data, then use the --samFlagInclude/--samFlagExclude options. (Default:
    None)'
  type: string
  inputBinding:
    prefix: --normalizeUsing
- id: exact_scaling
  doc: 'Instead of computing scaling factors based on a sampling of the reads, process
    all of the reads to determine the exact number that will be used in the output.
    This requires significantly more time to compute, but will produce more accurate
    scaling factors in cases where alignments that are being filtered are rare and
    lumped together. In other words, this is only needed when region-based sampling
    is expected to produce incorrect results. (default: False)'
  type: boolean
  inputBinding:
    prefix: --exactScaling
- id: ignore_for_normalization
  doc: 'A list of space-delimited chromosome names containing those chromosomes that
    should be excluded for computing the normalization. This is useful when considering
    samples with unequal coverage across chromosomes, like male samples. An usage
    examples is --ignoreForNormalization chrX chrM. (default: None)'
  type: string[]
  inputBinding:
    prefix: --ignoreForNormalization
- id: skip_noncovered_regions
  doc: 'This parameter determines if non-covered regions (regions without overlapping
    reads) in a BAM file should be skipped. The default is to treat those regions
    as having a value of zero. The decision to skip non-covered regions depends on
    the interpretation of the data. Non-covered regions may represent, for example,
    repetitive regions that should be skipped. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skipNonCoveredRegions
- id: smooth_length
  doc: 'bp The smooth length defines a window, larger than the binSize, to average
    the number of reads. For example, if the --binSize is set to 20 and the --smoothLength
    is set to 60, then, for each bin, the average of the bin and its left and right
    neighbors is considered. Any value smaller than --binSize will be ignored and
    no smoothing will be applied. (default: None)'
  type: long
  inputBinding:
    prefix: --smoothLength
- id: extend_reads
  doc: '[INT bp], -e [INT bp] This parameter allows the extension of reads to fragment
    size. If set, each read is extended, without exception. *NOTE*: This feature is
    generally NOT recommended for spliced-read data, such as RNA-seq, as it would
    extend reads over skipped regions. *Single- end*: Requires a user specified value
    for the final fragment length. Reads that already exceed this fragment length
    will not be extended. *Paired-end*: Reads with mates are always extended to match
    the fragment size defined by the two read mates. Unmated reads, mate reads that
    map too far apart (>4x fragment length) or even map to different chromosomes are
    treated like single-end reads. The input of a fragment length value is optional.
    If no value is specified, it is estimated from the data (mean of the fragment
    size of all mate reads). (default: False)'
  type: boolean
  inputBinding:
    prefix: --extendReads
- id: ignore_duplicates
  doc: "If set, reads that have the same orientation and start position will be considered\
    \ only once. If reads are paired, the mate's position also has to coincide to\
    \ ignore a read. (default: False)"
  type: boolean
  inputBinding:
    prefix: --ignoreDuplicates
- id: min_mapping_quality
  doc: 'If set, only reads that have a mapping quality score of at least this are
    considered. (default: None)'
  type: long
  inputBinding:
    prefix: --minMappingQuality
- id: center_reads
  doc: 'By adding this option, reads are centered with respect to the fragment length.
    For paired-end data, the read is centered at the fragment length defined by the
    two ends of the fragment. For single-end data, the given fragment length is used.
    This option is useful to get a sharper signal around enriched regions. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --centerReads
- id: sam_flag_include
  doc: 'Include reads based on the SAM flag. For example, to get only reads that are
    the first mate, use a flag of 64. This is useful to count properly paired reads
    only once, as otherwise the second mate will be also considered for the coverage.
    (Default: None)'
  type: long
  inputBinding:
    prefix: --samFlagInclude
- id: sam_flag_exclude
  doc: 'Exclude reads based on the SAM flag. For example, to get only reads that map
    to the forward strand, use --samFlagExclude 16, where 16 is the SAM flag for reads
    that map to the reverse strand. (Default: None)'
  type: long
  inputBinding:
    prefix: --samFlagExclude
- id: min_fragment_length
  doc: 'The minimum fragment length needed for read/pair inclusion. This option is
    primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome
    fragments. (Default: 0)'
  type: long
  inputBinding:
    prefix: --minFragmentLength
- id: max_fragment_length
  doc: 'The maximum fragment length needed for read/pair inclusion. (Default: 0)'
  type: long
  inputBinding:
    prefix: --maxFragmentLength
outputs: []
cwlVersion: v1.1
baseCommand:
- bamCoverage
