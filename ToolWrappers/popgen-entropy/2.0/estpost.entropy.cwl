class: CommandLineTool
id: estpost.entropy.cwl
inputs:
- id: in_outfile
  doc: Outfile [default = postout.txt]
  type: boolean
  inputBinding:
    prefix: -o
- id: in_name_summarize_eg
  doc: Name of parameter to summarize, e.g., 'q'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_credible_interval_calculate
  doc: Credible interval to calculate [default = 0.95]
  type: boolean
  inputBinding:
    prefix: -c
- id: in_number_discard_burnin
  doc: Number of additinal MCMC samples to discard for burn-in [default = 0]
  type: boolean
  inputBinding:
    prefix: -b
- id: in_summary_perform_estimates
  doc: "Which summary to perform: 0 = posterior estimates and credible intervals\n\
    1 = histogram of posterior samples\n2 = convert to plain text\n3 = calculate WAIC\n\
    4 = MCMC diagnostics"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_display_estpostentropy_software
  doc: Display estpost.entropy software version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_in_file_one_dot_hdf_five
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_file_two_dot_hdf_five
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- estpost.entropy
