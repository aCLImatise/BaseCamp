#!/usr/bin/env cwl-runner

baseCommand:
- IDMerger
class: CommandLineTool
cwlVersion: v1.0
id: idmerger
inputs:
- doc: "*               Input files separated by blanks (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*               Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Optional input file. IDs from 'in' are added to this file, but only if the\
    \ (modified) peptide sequences are not present yet (considering only best hits\
    \ per spectrum). (valid formats : 'idXML')"
  id: add_to
  inputBinding:
    prefix: -add_to
  type: File
- doc: 'Store the original filename in each protein/peptide identification (meta value:
    file_origin).'
  id: annotate_file_origin
  inputBinding:
    prefix: -annotate_file_origin
  type: boolean
- doc: Merge idXML files derived from a pepXML and corresponding protXML file. Exactly
    two input files are expected in this case. Not compatible with 'add_to'.
  id: pep_xml_prot_xml
  inputBinding:
    prefix: -pepxml_protxml
  type: boolean
- doc: Merge all identified proteins by accession into one protein identification
    run but keep all the PSMs with updated links to potential new protein ID#s. Not
    compatible with 'add_to'.
  id: merge_proteins_add_psms
  inputBinding:
    prefix: -merge_proteins_add_PSMs
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
