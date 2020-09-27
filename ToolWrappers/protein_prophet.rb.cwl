class: CommandLineTool
id: protein_prophet.rb.cwl
inputs:
- id: in_output_prefix
  doc: A string to prepend to the name of output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  inputBinding:
    prefix: --replace-output
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_glyco
  doc: Expect N-Glycosylation modifications as variable mod in a search or as a parameter
    when building statistical models [false]
  type: boolean
  inputBinding:
    prefix: --glyco
- id: in_i_prophet_input
  doc: Inputs are from iProphet [false]
  type: boolean
  inputBinding:
    prefix: --iprophet-input
- id: in_no_occam
  doc: Do not attempt to derive the simplest protein list explaining observed peptides
    [false]
  type: boolean
  inputBinding:
    prefix: --no-occam
- id: in_group_wts
  doc: Check peptide's total weight (rather than actual weight) in the Protein Group
    against the threshold [false]
  type: boolean
  inputBinding:
    prefix: --group-wts
- id: in_norm_prot_len
  doc: Normalize NSP using Protein Length [false]
  type: boolean
  inputBinding:
    prefix: --norm-protlen
- id: in_log_prob
  doc: Use the log of probability in the confidence calculations [false]
  type: boolean
  inputBinding:
    prefix: --log-prob
- id: in_conf_em
  doc: Use the EM to compute probability given the confidence [false]
  type: boolean
  inputBinding:
    prefix: --confem
- id: in_all_peps
  doc: Consider all possible peptides in the database in the confidence model [false]
  type: boolean
  inputBinding:
    prefix: --allpeps
- id: in_unmapped
  doc: Report results for unmapped proteins [false]
  type: boolean
  inputBinding:
    prefix: --unmapped
- id: in_instances
  doc: Use Expected Number of Ion Instances to adjust the peptide probabilities prior
    to NSP adjustment [false]
  type: boolean
  inputBinding:
    prefix: --instances
- id: in_delude
  doc: Do NOT use peptide degeneracy information when assessing proteins [false]
  type: boolean
  inputBinding:
    prefix: --delude
- id: in_min_prob
  doc: Minimum peptide prophet probability for peptides to be considered [0.05]
  type: double
  inputBinding:
    prefix: --minprob
- id: in_min_indep
  doc: Minimum percentage of independent peptides required for a protein [0]
  type: long
  inputBinding:
    prefix: --minindep
- id: in_file_two_dot_pep_dot_xml
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  outputBinding:
    glob: $(inputs.in_replace_output)
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- protein_prophet.rb
