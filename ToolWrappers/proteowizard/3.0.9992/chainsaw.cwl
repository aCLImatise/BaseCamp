class: CommandLineTool
id: chainsaw.cwl
inputs:
- id: in_arg_specify_cleavage
  doc: "[ --cleavageAgentName ] arg        : specify cleavage by name. Options:\n\
    Trypsin, Arg-C, Asp-N, Asp-N_ambic,\nChymotrypsin, CNBr, Formic_acid, Lys-C,\n\
    Lys-C/P, PepsinA, TrypChymo, Trypsin/P,\nV8-DE, V8-E, leukocyte elastase, proline\n\
    endopeptidase, glutamyl endopeptidase,\n2-iodobenzoate, no cleavage, unspecific\n\
    cleavage\nDefault : trypsin"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_specify_egtrypsin
  doc: "[ --cleavageAgentRegex ] arg       : specify a cleavage agent regex (e.g.\n\
    trypsin = \"(?<=[KR])(?!P)\")"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_specify_number
  doc: '[ --numMissedCleavages ] arg (=0)  : specify number of missed cleavages to'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_benchmark
  doc: ': do not write results'
  type: boolean?
  inputBinding:
    prefix: --benchmark
- id: in_index_only
  doc: ': create database index (if necessary)'
  type: boolean?
  inputBinding:
    prefix: --indexOnly
- id: in_protein_summary
  doc: ": print a table with index, id, length,\nMW, and description for each protein"
  type: boolean?
  inputBinding:
    prefix: --proteinSummary
- id: in_subset
  doc: ": create a subset database (use filters\nto define the subset)"
  type: string?
  inputBinding:
    prefix: --subset
- id: in_filter
  doc: ': add a protein list filter'
  type: string?
  inputBinding:
    prefix: --filter
- id: in_allow_dot
  doc: '-s [ --specificity ] arg              : specify minimum specificity. Options:'
  type: string
  inputBinding:
    position: 0
- id: in_fully
  doc: '-m [ --minLength ] arg (=0)           : specify minimum length of digested '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- chainsaw
