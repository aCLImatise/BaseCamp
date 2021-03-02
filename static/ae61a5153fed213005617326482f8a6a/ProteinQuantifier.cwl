class: CommandLineTool
id: ProteinQuantifier.cwl
inputs:
- id: in_in
  doc: "*               Input file (valid formats: 'featureXML', 'consensusXML', 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_protein_groups
  doc: "Protein inference results for the identification runs that were used to annotate\
    \ the input (e.g. from ProteinProphet via IDFileConverter or Fido via FidoAdapter).\n\
    Information about indistinguishable proteins will be used for protein quantification.\
    \ (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -protein_groups
- id: in_out
  doc: "Output file for protein abundances (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_peptide_out
  doc: "Output file for peptide abundances (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -peptide_out
- id: in_top
  doc: "Calculate protein abundance from this number of proteotypic peptides (most\
    \ abundant first; '0' for all) (default: '3' min: '0')"
  type: long?
  inputBinding:
    prefix: -top
- id: in_average
  doc: "Averaging method used to compute protein abundances from peptide abundances\
    \ (default: 'median' valid: 'median', 'mean', 'weighted_mean', 'sum')"
  type: string?
  inputBinding:
    prefix: -average
- id: in_include_all
  doc: Include results for proteins with fewer proteotypic peptides than indicated
    by 'top' (no effect if 'top' is 0 or 1)
  type: boolean?
  inputBinding:
    prefix: -include_all
- id: in_filter_charge
  doc: "Distinguish between charge states of a peptide. For peptides, abundances will\
    \ be reported separately for each charge;\nfor proteins, abundances will be computed\
    \ based only on the most prevalent charge of each peptide.\nBy default, abundances\
    \ are summed over all charge states."
  type: boolean?
  inputBinding:
    prefix: -filter_charge
- id: in_ratios
  doc: 'Add the log2 ratios of the abundance values to the output. Format: log_2(x_0/x_0)
    <sep> log_2(x_1/x_0) <sep> log_2(x_2/x_0) ...'
  type: boolean?
  inputBinding:
    prefix: -ratios
- id: in_ratios_sila_c
  doc: 'Add the log2 ratios for a triple SILAC experiment to the output. Only applicable
    to consensus maps of exactly three sub-maps. Format: log_2(heavy/light) <sep>
    log_2(heavy/middle) <sep> log_2(middle/light)'
  type: boolean?
  inputBinding:
    prefix: -ratiosSILAC
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file for protein abundances (valid formats: 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_peptide_out
  doc: "Output file for peptide abundances (valid formats: 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_peptide_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ProteinQuantifier
