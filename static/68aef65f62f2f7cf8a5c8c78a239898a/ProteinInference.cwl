class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ProteinInference.cwl
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
    \ or for group based quant. later. Only works with a single ID run in the file.\
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
