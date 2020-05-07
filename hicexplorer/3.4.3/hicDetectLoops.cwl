class: CommandLineTool
id: hicDetectLoops.cwl
inputs:
- id: matrix
  doc: The matrix to compute the loop detection on.
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: Outfile name to store the detected loops. The file will in bedgraph format.
  type: string
  inputBinding:
    prefix: --outFileName
- id: peak_width
  doc: The width of the peak region in bins. The square around the peak will include
    (2 * peakWidth)^2 bins.
  type: string
  inputBinding:
    prefix: --peakWidth
- id: window_size
  doc: The window size for the neighborhood region the peak is located in. All values
    from this region (exclude the values from the peak region) are tested against
    the peak region for significant difference. The square will have the size of (2
    * windowSize)^2 bins
  type: string
  inputBinding:
    prefix: --windowSize
- id: p_value_preselection
  doc: Only candidates with p-values less the given threshold will be considered as
    candidates. For each genomic distance a negative binomial distribution is fitted
    and for each pixel a p-value given by the cumulative density function is given.
    This does NOT influence the p-value for the neighborhood testing.
  type: string
  inputBinding:
    prefix: --pValuePreselection
- id: peak_interactions_threshold
  doc: The minimum number of interactions a detected peaks needs to have to be considered.
  type: string
  inputBinding:
    prefix: --peakInteractionsThreshold
- id: maximum_interaction_percentage_threshold
  doc: For each distance the maximum value is considered and all candidates need to
    have at least 'max_value * maximumInteractionPercentageThreshold' interactions.
  type: long
  inputBinding:
    prefix: --maximumInteractionPercentageThreshold
- id: p_value
  doc: Rejection level for Anderson-Darling test for H0. H0 is peak region and background
    have the same distribution.
  type: string
  inputBinding:
    prefix: --pValue
- id: max_loop_distance
  doc: Maximum genomic distance of a loop, usually loops are within a distance of
    ~2MB.
  type: long
  inputBinding:
    prefix: --maxLoopDistance
- id: min_loop_distance
  doc: Minimum genomic distance of a loop to be considered.
  type: long
  inputBinding:
    prefix: --minLoopDistance
- id: chromosomes
  doc: Chromosomes to include in the analysis. If not set, all chromosomes are included.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: region
  doc: The format is chr:start-end.
  type: string
  inputBinding:
    prefix: --region
- id: threads
  doc: Number of threads to use, the parallelization is implemented per chromosome.
  type: string
  inputBinding:
    prefix: --threads
- id: threads_per_chromosome
  doc: Number of threads to use per parallel thread processing a chromosome. E.g.
    --threads = 4 and --threadsPerChromosome = 4 makes 4 * 4 = 16 threads in total.
  type: string
  inputBinding:
    prefix: --threadsPerChromosome
- id: statistical_test
  doc: Which statistical test should be used.
  type: string
  inputBinding:
    prefix: --statisticalTest
outputs: []
cwlVersion: v1.1
baseCommand:
- hicDetectLoops
