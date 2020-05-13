class: CommandLineTool
id: easypqp_library.cwl
inputs:
- id: out
  doc: Output TSV peptide query parameter file. [required]
  type: File
  inputBinding:
    prefix: --out
- id: psm_tsv
  doc: psm.tsv file from Philosopher.
  type: File
  inputBinding:
    prefix: --psmtsv
- id: peptide_tsv
  doc: peptide.tsv file from Philosopher.
  type: File
  inputBinding:
    prefix: --peptidetsv
- id: rt_reference
  doc: Optional iRT/CiRT reference file.
  type: File
  inputBinding:
    prefix: --rt_reference
- id: rt_filter
  doc: Optional tag to filter candidate RT reference runs.
  type: string
  inputBinding:
    prefix: --rt_filter
- id: im_reference
  doc: Optional IM reference file.
  type: File
  inputBinding:
    prefix: --im_reference
- id: im_filter
  doc: Optional tag to filter candidate IM reference runs.
  type: string
  inputBinding:
    prefix: --im_filter
- id: psm_fdr_threshold
  doc: 'PSM FDR threshold.  [default: 0.01]'
  type: double
  inputBinding:
    prefix: --psm_fdr_threshold
- id: peptide_fdr_threshold
  doc: 'Peptide FDR threshold.  [default: 0.01]'
  type: double
  inputBinding:
    prefix: --peptide_fdr_threshold
- id: protein_fdr_threshold
  doc: 'Protein FDR threshold.  [default: 0.01]'
  type: double
  inputBinding:
    prefix: --protein_fdr_threshold
- id: rt_lowess_fraction
  doc: 'Fraction of data points to use for RT lowess regression.  [default: 0.05]'
  type: double
  inputBinding:
    prefix: --rt_lowess_fraction
- id: rt_psm_fdr_threshold
  doc: 'PSM FDR threshold used for RT alignment. [default: 0.001]'
  type: double
  inputBinding:
    prefix: --rt_psm_fdr_threshold
- id: im_lowess_fraction
  doc: 'Fraction of data points to use for IM lowess regression.  [default: 1.0]'
  type: double
  inputBinding:
    prefix: --im_lowess_fraction
- id: im_psm_fdr_threshold
  doc: 'PSM FDR threshold used for IM alignment. [default: 0.001]'
  type: double
  inputBinding:
    prefix: --im_psm_fdr_threshold
- id: pi0_lambda
  doc: '... Use non-parametric estimation of p-values. Either use <START END STEPS>,
    e.g. 0.1, 1.0, 0.1 or set to fixed value, e.g. 0.4, 0, 0. [default: 0.1, 0.5,
    0.05]'
  type: double
  inputBinding:
    prefix: --pi0_lambda
- id: peptide_plot
  doc: 'Output peptide-level PDF report.  [default: easypqp_peptide_report.pdf; required]'
  type: File
  inputBinding:
    prefix: --peptide_plot
- id: protein_plot
  doc: 'Output protein-level PDF report.  [default: easypqp_protein_report.pdf; required]'
  type: File
  inputBinding:
    prefix: --protein_plot
- id: min_peptides
  doc: 'Minimum peptides required for successful alignment.  [default: 5]'
  type: long
  inputBinding:
    prefix: --min_peptides
- id: proteo_typic
  doc: '/ --no-proteotypic Use only proteotypic, unique, non-shared peptides.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --proteotypic
- id: consensus
  doc: '/ --no-consensus    Generate consensus instead of best replicate spectra.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --consensus
outputs: []
cwlVersion: v1.1
baseCommand:
- easypqp
- library
