#!/usr/bin/env cwl-runner

baseCommand:
- IDFileConverter
class: CommandLineTool
cwlVersion: v1.0
id: idfileconverter
inputs:
- doc: "<path/file>*           Input file or directory containing the data to convert.\
    \ This may be: - a single file in a multi-purpose XML format (.pepXML, .protXML,\
    \ .idXML, .mzid), - a single file in a search engine-specific format (Mascot:\
    \ .mascotXML, OMSSA: .omssaXML, X! Tandem: .xml, Percolator: .psms, xQuest: .xquest.xml),\
    \ - a single text file (tab separated) with one line for all peptide sequences\
    \ matching a spectrum (top N hits), - for Sequest results, a directory containing\
    \ .out files. (valid formats: 'pepXML', 'protXML', 'mascotXML', 'omssaXML', 'xml',\
    \ 'psms', 'tsv', 'idXML', 'mzid', 'xquest.xml')"
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: "*               Output file (valid formats: 'idXML', 'mzid', 'pepXML', 'FASTA',\
    \ 'xquest.xml')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type (default: determined from file extension) (valid: 'idXML',\
    \ 'mzid', 'pepXML', 'FASTA', 'xquest.xml')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: "[pepXML, Sequest, Mascot, X! Tandem, mzid, Percolator only] Retention times\
    \ and native spectrum ids (spectrum_references) will be looked up in this file\
    \ (valid formats: 'mzML', 'mzX ML', 'mzData')"
  id: mz_file
  inputBinding:
    prefix: -mz_file
  type: File
- doc: "[pepXML only] Experiment filename/path (extension will be removed) to match\
    \ in the pepXML file ('base_name' attribute). Only necessary if different from\
    \ 'mz_file'."
  id: mz_name
  inputBinding:
    prefix: -mz_name
  type: File
- doc: "[pepXML output only] Write output in the format of a PeptideProphet analysis\
    \ result. By default a 'raw' pepXML is produced that contains only search engine\
    \ results."
  id: peptide_prophet_analyzed
  inputBinding:
    prefix: -peptideprophet_analyzed
  type: boolean
- doc: "[Percolator only] Which of the Percolator scores to report as 'the' score\
    \ for a peptide hit (default: 'qvalue' valid: 'qvalue', 'PEP', 'score')"
  id: score_type
  inputBinding:
    prefix: -score_type
  type: string
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
