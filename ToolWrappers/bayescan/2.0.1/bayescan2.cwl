class: CommandLineTool
id: bayescan2.cwl
inputs:
- id: in_optional_input_file
  doc: Optional input file containing list of loci to discard
  type: File?
  inputBinding:
    prefix: -d
- id: in_snp
  doc: Use SNP genotypes matrix
  type: boolean?
  inputBinding:
    prefix: -snp
- id: in_od
  doc: .        Output file directory, default is the same as program file
  type: File?
  inputBinding:
    prefix: -od
- id: in_output_file_prefix
  doc: Output file prefix, default is input file without the extension
  type: File?
  inputBinding:
    prefix: -o
- id: in_fstat
  doc: Only estimate F-stats (no selection)
  type: boolean?
  inputBinding:
    prefix: -fstat
- id: in_number_outputted_iterations
  doc: Number of outputted iterations, default is 5000
  type: long?
  inputBinding:
    prefix: -n
- id: in_thin
  doc: Thinning interval size, default is 10
  type: long?
  inputBinding:
    prefix: -thin
- id: in_nbp
  doc: Number of pilot runs, default is 20
  type: long?
  inputBinding:
    prefix: -nbp
- id: in_pilot
  doc: Length of pilot runs, default is 5000
  type: long?
  inputBinding:
    prefix: -pilot
- id: in_burn
  doc: Burn-in length, default is 50000
  type: long?
  inputBinding:
    prefix: -burn
- id: in_pr_odds
  doc: Prior odds for the neutral model, default is 10
  type: long?
  inputBinding:
    prefix: -pr_odds
- id: in_lb_fis
  doc: Lower bound for uniform prior on Fis (dominant data), default is 0
  type: long?
  inputBinding:
    prefix: -lb_fis
- id: in_hb_fis
  doc: Higher bound for uniform prior on Fis (dominant data), default is 1
  type: long?
  inputBinding:
    prefix: -hb_fis
- id: in_beta_fis
  doc: Optional beta prior for Fis (dominant data, m_fis and sd_fis need to be set)
  type: boolean?
  inputBinding:
    prefix: -beta_fis
- id: in_m_fis
  doc: Optional mean for beta prior on Fis (dominant data with -beta_fis)
  type: long?
  inputBinding:
    prefix: -m_fis
- id: in_sd_fis
  doc: Optional std. deviation for beta prior on Fis (dominant data with -beta_fis)
  type: long?
  inputBinding:
    prefix: -sd_fis
- id: in_aflp_pc
  doc: Threshold for the recessive genotype as a fraction of maximum band intensity,
    default is 0.1
  type: long?
  inputBinding:
    prefix: -aflp_pc
- id: in_out_pilot
  doc: Optional output file for pilot runs
  type: File?
  inputBinding:
    prefix: -out_pilot
- id: in_out_freq
  doc: Optional output file for allele frequencies
  type: File?
  inputBinding:
    prefix: -out_freq
- id: in_alleles_dot_txt
  doc: 'Name of the genotypes data input file '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_od
  doc: .        Output file directory, default is the same as program file
  type: File?
  outputBinding:
    glob: $(inputs.in_od)
- id: out_out_pilot
  doc: Optional output file for pilot runs
  type: File?
  outputBinding:
    glob: $(inputs.in_out_pilot)
- id: out_out_freq
  doc: Optional output file for allele frequencies
  type: File?
  outputBinding:
    glob: $(inputs.in_out_freq)
hints: []
cwlVersion: v1.1
baseCommand:
- bayescan2
