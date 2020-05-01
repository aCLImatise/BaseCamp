#!/usr/bin/env cwl-runner

baseCommand:
- hicDetectLoops
class: CommandLineTool
cwlVersion: v1.0
id: hicdetectloops
inputs:
- doc: The matrix to compute the loop detection on.
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: Outfile name to store the detected loops. The file will in bedgraph format.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: The width of the peak region in bins. The square around the peak will include
    (2 * peakWidth)^2 bins.
  id: peak_width
  inputBinding:
    prefix: --peakWidth
  type: string
- doc: The window size for the neighborhood region the peak is located in. All values
    from this region (exclude the values from the peak region) are tested against
    the peak region for significant difference. The square will have the size of (2
    * windowSize)^2 bins
  id: window_size
  inputBinding:
    prefix: --windowSize
  type: string
- doc: Only candidates with p-values less the given threshold will be considered as
    candidates. For each genomic distance a negative binomial distribution is fitted
    and for each pixel a p-value given by the cumulative density function is given.
    This does NOT influence the p-value for the neighborhood testing.
  id: p_value_preselection
  inputBinding:
    prefix: --pValuePreselection
  type: string
- doc: The minimum number of interactions a detected peaks needs to have to be considered.
  id: peak_interactions_threshold
  inputBinding:
    prefix: --peakInteractionsThreshold
  type: string
- doc: For each distance the maximum value is considered and all candidates need to
    have at least 'max_value * maximumInteractionPercentageThreshold' interactions.
  id: maximum_interaction_percentage_threshold
  inputBinding:
    prefix: --maximumInteractionPercentageThreshold
  type: long
- doc: Rejection level for Anderson-Darling test for H0. H0 is peak region and background
    have the same distribution.
  id: p_value
  inputBinding:
    prefix: --pValue
  type: string
- doc: Maximum genomic distance of a loop, usually loops are within a distance of
    ~2MB.
  id: max_loop_distance
  inputBinding:
    prefix: --maxLoopDistance
  type: long
- doc: Minimum genomic distance of a loop to be considered.
  id: min_loop_distance
  inputBinding:
    prefix: --minLoopDistance
  type: long
- doc: Chromosomes to include in the analysis. If not set, all chromosomes are included.
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: The format is chr:start-end.
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: Number of threads to use, the parallelization is implemented per chromosome.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Number of threads to use per parallel thread processing a chromosome. E.g.
    --threads = 4 and --threadsPerChromosome = 4 makes 4 * 4 = 16 threads in total.
  id: threads_per_chromosome
  inputBinding:
    prefix: --threadsPerChromosome
  type: string
- doc: Which statistical test should be used.
  id: statistical_test
  inputBinding:
    prefix: --statisticalTest
  type: string
