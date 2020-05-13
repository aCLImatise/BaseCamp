class: CommandLineTool
id: estimateScaleFactor.cwl
inputs:
- id: bam_files
  doc: 'of bam files [list of bam files ...], -b list of bam files [list of bam files
    ...] List of indexed BAM files, space delineated (default: None)'
  type: string
  inputBinding:
    prefix: --bamfiles
- id: ignore_for_normalization
  doc: 'A comma-separated list of chromosome names, limited by quotes, containing
    those chromosomes that should be excluded during normalization computations. For
    example, --ignoreForNormalization "chrX, chrM" (default: None)'
  type: string
  inputBinding:
    prefix: --ignoreForNormalization
- id: sample_window_length
  doc: 'Length in bases for a window used to sample the genome and compute the size
    or scaling factors (default: 1000)'
  type: string
  inputBinding:
    prefix: --sampleWindowLength
- id: number_of_samples
  doc: 'Number of samplings taken from the genome to compute the scaling factors (default:
    100000)'
  type: string
  inputBinding:
    prefix: --numberOfSamples
- id: normalization_length
  doc: 'By default, data is normalized to 1 fragment per 100 bases. The expected value
    is an integer. For example, if normalizationLength is 1000, then the resulting
    scaling factor will cause the average coverage of the BAM file to have on average
    1 fragment per kilobase (default: 10)'
  type: string
  inputBinding:
    prefix: --normalizationLength
- id: skip_zeros
  doc: 'If set, then zero counts that happen for *all* BAM files given are ignored.
    This will result in a reduced number of read counts than that specified in --numberOfSamples
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --skipZeros
- id: number_of_processors
  doc: 'Number of processors to use. The default is to use half the maximum number
    of processors. (default: max/2)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: verbose
  doc: 'Set to see processing messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- estimateScaleFactor
