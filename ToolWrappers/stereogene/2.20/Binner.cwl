class: CommandLineTool
id: Binner.cwl
inputs:
- id: in_v
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_syntax
  doc: strong syntax control in input files
  type: boolean?
  inputBinding:
    prefix: -syntax
- id: in_verbose
  doc: verbose
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_s
  doc: no output to stdout
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_silent
  doc: no output to stdout
  type: long?
  inputBinding:
    prefix: -silent
- id: in_bin
  doc: bin size for input averaging
  type: long?
  inputBinding:
    prefix: -bin
- id: in_clear
  doc: force binary profile preparation
  type: long?
  inputBinding:
    prefix: -clear
- id: in_force_binary_profile
  doc: force  binary profile preparation
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_cfg
  doc: config file
  type: File?
  inputBinding:
    prefix: -cfg
- id: in_prof_path
  doc: path for binary profiles
  type: File?
  inputBinding:
    prefix: -profPath
- id: in_track_path
  doc: path for tracks
  type: File?
  inputBinding:
    prefix: -trackPath
- id: in_res_path
  doc: path for results
  type: File?
  inputBinding:
    prefix: -resPath
- id: in_confounder
  doc: confounder filename
  type: File?
  inputBinding:
    prefix: -confounder
- id: in_statistics
  doc: cumulative file with statistics
  type: File?
  inputBinding:
    prefix: -statistics
- id: in_params
  doc: cumulative file with parameters
  type: File?
  inputBinding:
    prefix: -params
- id: in_log
  doc: cumulative log-file
  type: File?
  inputBinding:
    prefix: -log
- id: in_chrom
  doc: chromosome file
  type: File?
  inputBinding:
    prefix: -chrom
- id: in_bufsize
  doc: Buffer Size
  type: long?
  inputBinding:
    prefix: -BufSize
- id: in_bp_type
  doc: The value used as a score for BroadPeak input file
  type: File?
  inputBinding:
    prefix: -bpType
- id: in_pc_or_profile
  doc: Track for partial correlation
  type: string?
  inputBinding:
    prefix: -pcorProfile
- id: in_na
  doc: use NA values as unknown and fill them by noise
  type: boolean?
  inputBinding:
    prefix: -NA
- id: in_threshold
  doc: 'threshold for input data for removing too small values: 0..250'
  type: long?
  inputBinding:
    prefix: -threshold
- id: in_kernel_sigma
  doc: Kernel width
  type: double?
  inputBinding:
    prefix: -kernelSigma
- id: in_w_size
  doc: Window size
  type: long?
  inputBinding:
    prefix: -wSize
- id: in_max_na
  doc: Max number of NA values in window (percent)
  type: double?
  inputBinding:
    prefix: -maxNA
- id: in_max_zero
  doc: Max number of zero values in window (percent)
  type: double?
  inputBinding:
    prefix: -maxZero
- id: in_n_shuffle
  doc: Number of shuffles for background calculation
  type: long?
  inputBinding:
    prefix: -nShuffle
- id: in_sp
  doc: the data is sparce
  type: boolean?
  inputBinding:
    prefix: -sp
- id: in_out_spectr
  doc: write fourier spectrums
  type: long?
  inputBinding:
    prefix: -outSpectr
- id: in_out_chrom
  doc: write statistics by chromosomes
  type: long?
  inputBinding:
    prefix: -outChrom
- id: in_write_distr
  doc: write foreground and background distributions
  type: string?
  inputBinding:
    prefix: -writeDistr
- id: in_write_r_script
  doc: write R script for the result presentation
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_cross_width
  doc: Width of cross-correlation plot
  type: boolean?
  inputBinding:
    prefix: -crossWidth
- id: in_distances
  doc: Write distance correlations
  type: boolean?
  inputBinding:
    prefix: -Distances
- id: in_lc
  doc: produce profile correlation
  type: boolean?
  inputBinding:
    prefix: -lc
- id: in_lc_scale
  doc: 'Local correlation scale: LOG | LIN'
  type: string?
  inputBinding:
    prefix: -LCScale
- id: in_l_fdr
  doc: threshold on left FDR when write the local correlation
  type: double?
  inputBinding:
    prefix: -L_FDR
- id: in_r_fdr
  doc: threshold on right FDR when write the local correlation
  type: double?
  inputBinding:
    prefix: -R_FDR
- id: in_out_res
  doc: format for results in statistics file
  type: File?
  inputBinding:
    prefix: -outRes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Binner
