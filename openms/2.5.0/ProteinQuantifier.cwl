#!/usr/bin/env cwl-runner

baseCommand:
- ProteinQuantifier
class: CommandLineTool
cwlVersion: v1.0
id: proteinquantifier
inputs:
- doc: "*                        Input file (valid formats: 'featureXML', 'consensusXML',\
    \ 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Protein inference results for the identification runs that were used to annotate\
    \ the input (e.g. from ProteinProphet via IDFileConverter or Fido via FidoAdapter).\
    \ Information about indistinguishable proteins will be used for protein quantification.\
    \ (valid formats: 'idXML')"
  id: protein_groups
  inputBinding:
    prefix: -protein_groups
  type: File
- doc: "Input file containing the experimental design (valid formats: 'tsv')"
  id: design
  inputBinding:
    prefix: -design
  type: File
- doc: "Output file for protein abundances (valid formats: 'csv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file for peptide abundances (valid formats: 'csv')"
  id: peptide_out
  inputBinding:
    prefix: -peptide_out
  type: File
- doc: "Output file (mzTab) (valid formats: 'mzTab')"
  id: mz_tab
  inputBinding:
    prefix: -mztab
  type: File
- doc: "Calculate protein abundance from this number of proteotypic peptides (most\
    \ abundant first; '0' for all) (default: '3' min: '0')"
  id: top
  inputBinding:
    prefix: -top
  type: string
- doc: "Averaging method used to compute protein abundances from peptide abundances\
    \ (default: 'median' valid: 'median', 'mean', 'weighted_mean', 'sum')"
  id: average
  inputBinding:
    prefix: -average
  type: string
- doc: Include results for proteins with fewer proteotypic peptides than indicated
    by 'top' (no effect if 'top' is 0 or 1)
  id: include_all
  inputBinding:
    prefix: -include_all
  type: boolean
- doc: Distinguish between fraction and charge states of a peptide. For peptides,
    abundances will be reported separately for each fraction and charge; for proteins,
    abundances will be computed based only on the most prevalent charge observed of
    each peptide (over all fractions). By default, abundances are summed over all
    charge states.
  id: best_charge_and_fraction
  inputBinding:
    prefix: -best_charge_and_fraction
  type: boolean
- doc: :normalize               Scale peptide abundances so that medians of all samples
    are equal
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: :fix_peptides            Use the same peptides for protein quantification across
    all samples. With 'top 0', all peptides that occur in every sample are considered.
    Otherwise ('top N'), the N peptides that occur in the most samples (independently
    of each other) are selected, breaking ties by total abundance (there is no guarantee
    that the best co-ocurring peptides are chosen!).
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: "Pre-process identifications with greedy resolution of shared peptides based\
    \ on the protein group probabilities. (Only works with an idXML file given as\
    \ protein_groups parame ter). (default: 'false' valid: 'true', 'false')"
  id: greedy_group_resolution
  inputBinding:
    prefix: -greedy_group_resolution
  type: string
- doc: 'Add the log2 ratios of the abundance values to the output. Format: log_2(x_0/x_0)
    <sep> log_2(x_1/x_0) <sep> log_2(x_2/x_0) ...'
  id: ratios
  inputBinding:
    prefix: -ratios
  type: boolean
- doc: 'Add the log2 ratios for a triple SILAC experiment to the output. Only applicable
    to consensus maps of exactly three sub-maps. Format: log_2(heavy/light) <sep>
    log_2(heavy/mi ddle) <sep> log_2(middle/light)'
  id: ratios_sila_c
  inputBinding:
    prefix: -ratiosSILAC
  type: boolean
- doc: :separator <sep>            Character(s) used to separate fields; by default,
    the 'tab' character is used
  id: format
  inputBinding:
    prefix: -format
  type: boolean
- doc: ":quoting <method>           Method for quoting of strings: 'none' for no quoting,\
    \ 'double' for quoting with doubling of embedded quotes, 'escape' for quoting\
    \ with backslash-escaping of embedded quotes (default: 'double' valid: 'none',\
    \ 'double', 'escape')"
  id: format
  inputBinding:
    prefix: -format
  type: boolean
- doc: ":replacement <x>            If 'quoting' is 'none', used to replace occurrences\
    \ of the separator in strings before writing (default: '_')"
  id: format
  inputBinding:
    prefix: -format
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
