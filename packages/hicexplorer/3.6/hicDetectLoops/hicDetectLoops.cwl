class: CommandLineTool
id: hicDetectLoops.cwl
inputs:
- id: in_matrix
  doc: The matrix to compute the loop detection on.
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "Outfile name to store the detected loops. The file\nwill in bedgraph format."
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_peak_width
  doc: "The width of the peak region in bins. The square\naround the peak will include\
    \ (2 * peakWidth)^2 bins\n(Default: 2)."
  type: long?
  inputBinding:
    prefix: --peakWidth
- id: in_window_size
  doc: "The window size for the neighborhood region the peak\nis located in. All values\
    \ from this region (exclude\nthe values from the peak region) are tested against\n\
    the peak region for significant difference. The square\nwill have the size of\
    \ (2 * windowSize)^2 bins\n(Default: 5)."
  type: long?
  inputBinding:
    prefix: --windowSize
- id: in_p_value_preselection
  doc: "Only candidates with p-values less the given threshold\nwill be considered\
    \ as candidates. For each genomic\ndistance a negative binomial distribution is\
    \ fitted\nand for each pixel a p-value given by the cumulative\ndensity function\
    \ is given. This does NOT influence the\np-value for the neighborhood testing.\
    \ Can a single\nvalue or a threshold file created by\nhicCreateThresholdFile (Default:\
    \ 0.1)."
  type: File?
  inputBinding:
    prefix: --pValuePreselection
- id: in_peak_interactions_threshold
  doc: "The minimum number of interactions a detected peaks\nneeds to have to be considered\
    \ (Default: 10)."
  type: long?
  inputBinding:
    prefix: --peakInteractionsThreshold
- id: in_obs_exp_threshold
  doc: "The minimum number of obs/exp interactions a detected\npeaks needs to have\
    \ to be considered (Default: 1.5)."
  type: long?
  inputBinding:
    prefix: --obsExpThreshold
- id: in_p_value
  doc: "Rejection level for Anderson-Darling or Wilcoxon-rank\nsum test for H0. H0\
    \ is peak region and background have\nthe same distribution (Default: 0.025)."
  type: double?
  inputBinding:
    prefix: --pValue
- id: in_max_loop_distance
  doc: "Maximum genomic distance of a loop, usually loops are\nwithin a distance of\
    \ ~2MB (Default: 2000000)."
  type: long?
  inputBinding:
    prefix: --maxLoopDistance
- id: in_chromosomes
  doc: "Chromosomes to include in the analysis. If not set,\nall chromosomes are included."
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_threads
  doc: "Number of threads to use, the parallelization is\nimplemented per chromosome\
    \ (Default: 4)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_threads_per_chromosome
  doc: "Number of threads to use per parallel thread\nprocessing a chromosome. E.g.\
    \ --threads = 4 and\n--threadsPerChromosome = 4 makes 4 * 4 = 16 threads in\n\
    total (Default: 4)."
  type: long?
  inputBinding:
    prefix: --threadsPerChromosome
- id: in_expected
  doc: "Method to compute the expected value per distance:\nEither the mean (mean),\
    \ the mean of non-zero values\n(mean_nonzero) or the mean of non-zero values with\n\
    ligation factor correction (mean_nonzero_ligation)\n(Default: mean)."
  type: string?
  inputBinding:
    prefix: --expected
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "Outfile name to store the detected loops. The file\nwill in bedgraph format."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicDetectLoops
