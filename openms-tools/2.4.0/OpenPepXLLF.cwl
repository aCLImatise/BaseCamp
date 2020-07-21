class: CommandLineTool
id: ../../../OpenPepXLLF.cwl
inputs:
- id: in
  doc: "*                                    Input file containing the spectra. (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: database
  doc: "*                              Input file containing the protein database.\
    \ (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: decoy_string
  doc: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions\
    \ in the protein database to indicate decoy proteins. (default: 'decoy')"
  type: string
  inputBinding:
    prefix: -decoy_string
- id: decoy_prefix
  doc: Set flag, if the decoy_string is a prefix of accessions in the protein database.
    Otherwise it is a suffix.
  type: boolean
  inputBinding:
    prefix: -decoy_prefix
- id: out_x_quest_xml
  doc: "Results in the xquest.xml format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results). (valid formats: 'xml',\
    \ 'xquest.xml')"
  type: File
  inputBinding:
    prefix: -out_xquestxml
- id: out_x_quest_spec_xml
  doc: "Matched spectra in the xQuest .spec.xml format for spectra visualization in\
    \ the xQuest results manager. (valid formats: 'xml', 'spec.xml')"
  type: File
  inputBinding:
    prefix: -out_xquest_specxml
- id: out_idxml
  doc: "Results in idXML format (at least one of these output parameters should be\
    \ set, otherwise you will not have any results). (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out_idXML
- id: out_mz_ident_ml
  doc: "Results in mzIdentML (.mzid) format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results) (valid formats: 'mzid')"
  type: File
  inputBinding:
    prefix: -out_mzIdentML
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
- OpenPepXLLF
