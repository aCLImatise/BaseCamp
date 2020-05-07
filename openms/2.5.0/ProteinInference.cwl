class: CommandLineTool
id: ProteinInference.cwl
inputs:
- id: in
  doc: "*                                               Input file(s) (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                                              Output file (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: merge_runs
  doc: "If your idXML contains multiple runs, merge them beforehand? (default: 'no'\
    \ valid: 'no', 'all')"
  type: string
  inputBinding:
    prefix: -merge_runs
- id: annotate_in_dist_groups
  doc: "If you want to annotate indistinguishable protein groups, either for reporting\
    \ or for group based quant. later. Only works with a single ID run in  the file.\
    \ (default: 'true' valid: 'true', 'false')"
  type: string
  inputBinding:
    prefix: -annotate_indist_groups
- id: merging
  doc: ":annotate_origin <choice>                         If true, adds a map_index\
    \ MetaValue to the PeptideIDs to annotate the IDRun they came from. (default:\
    \ 'true' valid: 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -Merging
- id: algorithm
  doc: ":min_peptides_per_protein <number>              Minimal number of peptides\
    \ needed for a protein identification. If set to zero, unmatched proteins get\
    \ a score of -Infinity. If bigger than zero, prot eins with less peptides are\
    \ filtered and evidences removed from the PSMs. PSMs that do not reference any\
    \ proteins anymore are removed but the spectrum info is kept. (default: '1' min:\
    \ '0')"
  type: boolean
  inputBinding:
    prefix: -Algorithm
- id: algorithm
  doc: ":score_aggregation_method <choice>              How to aggregate scores of\
    \ peptides matching to the same protein? (default: 'maximum' valid: 'maximum',\
    \ 'product', 'sum')"
  type: boolean
  inputBinding:
    prefix: -Algorithm
- id: algorithm
  doc: ":treat_charge_variants_separately <text>        If this is set, different\
    \ charge variants of the same peptide sequence count as individual evidences.\
    \ (default: 'true')"
  type: boolean
  inputBinding:
    prefix: -Algorithm
- id: algorithm
  doc: ":treat_modification_variants_separately <text>  If this is set, different\
    \ modification variants of the same peptide sequence count as individual evidences.\
    \ (default: 'true')"
  type: boolean
  inputBinding:
    prefix: -Algorithm
- id: algorithm
  doc: ":use_shared_peptides <text>                     If this is set, shared peptides\
    \ are used as evidences. (default: 'true')"
  type: boolean
  inputBinding:
    prefix: -Algorithm
- id: algorithm
  doc: ":skip_count_annotation <text>                   If this is true, peptide counts\
    \ won't be annotated at the proteins. (default: 'false')"
  type: boolean
  inputBinding:
    prefix: -Algorithm
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
- ProteinInference
