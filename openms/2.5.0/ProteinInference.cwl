#!/usr/bin/env cwl-runner

baseCommand:
- ProteinInference
class: CommandLineTool
cwlVersion: v1.0
id: proteininference
inputs:
- doc: "*                                               Input file(s) (valid formats:\
    \ 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                              Output file (valid formats:\
    \ 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "If your idXML contains multiple runs, merge them beforehand? (default: 'no'\
    \ valid: 'no', 'all')"
  id: merge_runs
  inputBinding:
    prefix: -merge_runs
  type: string
- doc: "If you want to annotate indistinguishable protein groups, either for reporting\
    \ or for group based quant. later. Only works with a single ID run in  the file.\
    \ (default: 'true' valid: 'true', 'false')"
  id: annotate_in_dist_groups
  inputBinding:
    prefix: -annotate_indist_groups
  type: string
- doc: ":annotate_origin <choice>                         If true, adds a map_index\
    \ MetaValue to the PeptideIDs to annotate the IDRun they came from. (default:\
    \ 'true' valid: 'true', 'false')"
  id: merging
  inputBinding:
    prefix: -Merging
  type: boolean
- doc: ":min_peptides_per_protein <number>              Minimal number of peptides\
    \ needed for a protein identification. If set to zero, unmatched proteins get\
    \ a score of -Infinity. If bigger than zero, prot eins with less peptides are\
    \ filtered and evidences removed from the PSMs. PSMs that do not reference any\
    \ proteins anymore are removed but the spectrum info is kept. (default: '1' min:\
    \ '0')"
  id: algorithm
  inputBinding:
    prefix: -Algorithm
  type: boolean
- doc: ":score_aggregation_method <choice>              How to aggregate scores of\
    \ peptides matching to the same protein? (default: 'maximum' valid: 'maximum',\
    \ 'product', 'sum')"
  id: algorithm
  inputBinding:
    prefix: -Algorithm
  type: boolean
- doc: ":treat_charge_variants_separately <text>        If this is set, different\
    \ charge variants of the same peptide sequence count as individual evidences.\
    \ (default: 'true')"
  id: algorithm
  inputBinding:
    prefix: -Algorithm
  type: boolean
- doc: ":treat_modification_variants_separately <text>  If this is set, different\
    \ modification variants of the same peptide sequence count as individual evidences.\
    \ (default: 'true')"
  id: algorithm
  inputBinding:
    prefix: -Algorithm
  type: boolean
- doc: ":use_shared_peptides <text>                     If this is set, shared peptides\
    \ are used as evidences. (default: 'true')"
  id: algorithm
  inputBinding:
    prefix: -Algorithm
  type: boolean
- doc: ":skip_count_annotation <text>                   If this is true, peptide counts\
    \ won't be annotated at the proteins. (default: 'false')"
  id: algorithm
  inputBinding:
    prefix: -Algorithm
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
