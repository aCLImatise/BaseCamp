class: CommandLineTool
id: ../../../easypqp_library.cwl
inputs:
- id: in_out
  doc: "Output TSV peptide query parameter file.\n[required]"
  type: File
  inputBinding:
    prefix: --out
- id: in_psm_tsv
  doc: psm.tsv file from Philosopher.
  type: File
  inputBinding:
    prefix: --psmtsv
- id: in_peptide_tsv
  doc: peptide.tsv file from Philosopher.
  type: File
  inputBinding:
    prefix: --peptidetsv
- id: in_rt_reference
  doc: Optional iRT/CiRT reference file.
  type: File
  inputBinding:
    prefix: --rt_reference
- id: in_rt_filter
  doc: "Optional tag to filter candidate RT\nreference runs."
  type: string
  inputBinding:
    prefix: --rt_filter
- id: in_im_reference
  doc: Optional IM reference file.
  type: File
  inputBinding:
    prefix: --im_reference
- id: in_im_filter
  doc: "Optional tag to filter candidate IM\nreference runs."
  type: string
  inputBinding:
    prefix: --im_filter
- id: in_psm_fdr_threshold
  doc: 'PSM FDR threshold.  [default: 0.01]'
  type: double
  inputBinding:
    prefix: --psm_fdr_threshold
- id: in_peptide_fdr_threshold
  doc: 'Peptide FDR threshold.  [default: 0.01]'
  type: double
  inputBinding:
    prefix: --peptide_fdr_threshold
- id: in_protein_fdr_threshold
  doc: 'Protein FDR threshold.  [default: 0.01]'
  type: double
  inputBinding:
    prefix: --protein_fdr_threshold
- id: in_rt_lowess_fraction
  doc: Fraction of data points to use for RT lowess
  type: double
  inputBinding:
    prefix: --rt_lowess_fraction
- id: in_rt_psm_fdr_threshold
  doc: "PSM FDR threshold used for RT alignment.\n[default: 0.001]"
  type: double
  inputBinding:
    prefix: --rt_psm_fdr_threshold
- id: in_im_lowess_fraction
  doc: Fraction of data points to use for IM lowess
  type: double
  inputBinding:
    prefix: --im_lowess_fraction
- id: in_im_psm_fdr_threshold
  doc: "PSM FDR threshold used for IM alignment.\n[default: 0.001]"
  type: double
  inputBinding:
    prefix: --im_psm_fdr_threshold
- id: in_pi_zero_lambda
  doc: "...\nUse non-parametric estimation of p-values.\nEither use <START END STEPS>,\
    \ e.g. 0.1, 1.0,\n0.1 or set to fixed value, e.g. 0.4, 0, 0.\n[default: 0.1, 0.5,\
    \ 0.05]"
  type: double
  inputBinding:
    prefix: --pi0_lambda
- id: in_peptide_plot
  doc: "Output peptide-level PDF report.  [default:\neasypqp_peptide_report.pdf; required]"
  type: File
  inputBinding:
    prefix: --peptide_plot
- id: in_protein_plot
  doc: "Output protein-level PDF report.  [default:\neasypqp_protein_report.pdf; required]"
  type: File
  inputBinding:
    prefix: --protein_plot
- id: in_min_peptides
  doc: Minimum peptides required for successful
  type: long
  inputBinding:
    prefix: --min_peptides
- id: in_proteo_typic
  doc: "/ --no-proteotypic\nUse only proteotypic, unique, non-shared\npeptides.  [default:\
    \ True]"
  type: boolean
  inputBinding:
    prefix: --proteotypic
- id: in_consensus
  doc: / --no-consensus    Generate consensus instead of best replicate
  type: boolean
  inputBinding:
    prefix: --consensus
- id: in_no_fdr
  doc: "/ --no-fdr-filtering    Do not reassess or filter by FDR, as library\nwas\
    \ already provided using customized FDR\nfiltering.  [default: False]"
  type: boolean
  inputBinding:
    prefix: --nofdr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output TSV peptide query parameter file.\n[required]"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- easypqp
- library
