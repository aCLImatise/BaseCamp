class: CommandLineTool
id: ProteinInference.cwl
inputs:
- id: in_in
  doc: "*                                               Input file(s) (valid formats:\
    \ 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                                              Output file (valid formats:\
    \ 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_merge_runs
  doc: "If your idXML contains multiple runs, merge them beforehand? (default: 'no'\
    \ valid: 'no', 'all')"
  type: string?
  inputBinding:
    prefix: -merge_runs
- id: in_annotate_in_dist_groups
  doc: "If you want to annotate indistinguishable protein groups, either for reporting\
    \ or for group based quant. later. Only works with a single ID run in the file.\
    \ (default: 'true' valid: 'true', 'false')"
  type: File?
  inputBinding:
    prefix: -annotate_indist_groups
- id: in_merging
  doc: ":annotate_origin <choice>                         If true, adds a map_index\
    \ MetaValue to the PeptideIDs to annotate the IDRun they came from. (default:\
    \ 'true' valid: 'true', 'false')"
  type: boolean?
  inputBinding:
    prefix: -Merging
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
  doc: "*                                              Output file (valid formats:\
    \ 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ProteinInference
