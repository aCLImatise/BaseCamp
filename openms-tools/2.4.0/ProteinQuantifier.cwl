class: CommandLineTool
id: ProteinQuantifier.cwl
inputs:
- id: in
  doc: "*               Input file (valid formats: 'featureXML', 'consensusXML', 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: protein_groups
  doc: "Protein inference results for the identification runs that were used to annotate\
    \ the input (e.g. from ProteinProphet via IDFileConverter or Fido via FidoAdapter).\
    \ Information about indistinguishable proteins will be used for protein quantification.\
    \ (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -protein_groups
- id: out
  doc: "Output file for protein abundances (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out
- id: peptide_out
  doc: "Output file for peptide abundances (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -peptide_out
- id: top
  doc: "Calculate protein abundance from this number of proteotypic peptides (most\
    \ abundant first; '0' for all) (default: '3' min: '0')"
  type: string
  inputBinding:
    prefix: -top
- id: average
  doc: "Averaging method used to compute protein abundances from peptide abundances\
    \ (default: 'median' valid: 'median', 'mean', 'weighted_mean', 'sum')"
  type: string
  inputBinding:
    prefix: -average
- id: include_all
  doc: Include results for proteins with fewer proteotypic peptides than indicated
    by 'top' (no effect if 'top' is 0 or 1)
  type: boolean
  inputBinding:
    prefix: -include_all
- id: filter_charge
  doc: Distinguish between charge states of a peptide. For peptides, abundances will
    be reported separately for each charge; for proteins, abundances will be computed
    based only on the most prevalent charge of each peptide. By default, abundances
    are summed over all charge states.
  type: boolean
  inputBinding:
    prefix: -filter_charge
- id: consensus
  doc: :normalize      Scale peptide abundances so that medians of all samples are
    equal
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: :fix_peptides   Use the same peptides for protein quantification across all
    samples. With 'top 0', all peptides that occur in every sample are considered.
    Otherwise ('top N'), the N peptides that occur in the most samples (independently
    of each other) are selected, breaking ties by total abundance (there is no guarantee
    that the best co-ocurring peptides are chosen!).
  type: boolean
  inputBinding:
    prefix: -consensus
- id: ratios
  doc: 'Add the log2 ratios of the abundance values to the output. Format: log_2(x_0/x_0)
    <sep> log_2(x_1/x_0) <sep> log_2(x_2/x_0) ...'
  type: boolean
  inputBinding:
    prefix: -ratios
- id: ratios_sila_c
  doc: 'Add the log2 ratios for a triple SILAC experiment to the output. Only applicable
    to consensus maps of exactly three sub-maps. Format: log_2(heavy/light) <sep>
    log_2(heavy/middle)  <sep> log_2(middle/light)'
  type: boolean
  inputBinding:
    prefix: -ratiosSILAC
- id: format
  doc: :separator <sep>   Character(s) used to separate fields; by default, the 'tab'
    character is used
  type: boolean
  inputBinding:
    prefix: -format
- id: format
  doc: ":quoting <method>  Method for quoting of strings: 'none' for no quoting, 'double'\
    \ for quoting with doubling of embedded quotes, 'escape' for quoting with backslash-escaping\
    \ of embedded quotes (default: 'double' valid: 'none', 'double', 'escape')"
  type: boolean
  inputBinding:
    prefix: -format
- id: format
  doc: ":replacement <x>   If 'quoting' is 'none', used to replace occurrences of\
    \ the separator in strings before writing (default: '_')"
  type: boolean
  inputBinding:
    prefix: -format
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- ProteinQuantifier
