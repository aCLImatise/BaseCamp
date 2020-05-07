class: CommandLineTool
id: IDFileConverter.cwl
inputs:
- id: in
  doc: "<path/file>*           Input file or directory containing the data to convert.\
    \ This may be: - a single file in a multi-purpose XML format (.pepXML, .protXML,\
    \ .idXML, .mzid), - a single file in a search engine-specific format (Mascot:\
    \ .mascotXML, OMSSA: .omssaXML, X! Tandem: .xml, Percolator: .psms, xQuest: .xquest.xml),\
    \ - a single text file (tab separated) with one line for all peptide sequences\
    \ matching a spectrum (top N hits), - for Sequest results, a directory containing\
    \ .out files. (valid formats: 'pepXML', 'protXML', 'mascotXML', 'omssaXML', 'xml',\
    \ 'psms', 'tsv', 'idXML', 'mzid', 'xquest.xml')"
  type: boolean
  inputBinding:
    prefix: -in
- id: out
  doc: "*               Output file (valid formats: 'idXML', 'mzid', 'pepXML', 'FASTA',\
    \ 'xquest.xml')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type (default: determined from file extension) (valid: 'idXML',\
    \ 'mzid', 'pepXML', 'FASTA', 'xquest.xml')"
  type: string
  inputBinding:
    prefix: -out_type
- id: mz_file
  doc: "[pepXML, Sequest, Mascot, X! Tandem, mzid, Percolator only] Retention times\
    \ and native spectrum ids (spectrum_references) will be looked up in this file\
    \ (valid formats: 'mzML', 'mzX ML', 'mzData')"
  type: File
  inputBinding:
    prefix: -mz_file
- id: mz_name
  doc: "[pepXML only] Experiment filename/path (extension will be removed) to match\
    \ in the pepXML file ('base_name' attribute). Only necessary if different from\
    \ 'mz_file'."
  type: File
  inputBinding:
    prefix: -mz_name
- id: peptide_prophet_analyzed
  doc: "[pepXML output only] Write output in the format of a PeptideProphet analysis\
    \ result. By default a 'raw' pepXML is produced that contains only search engine\
    \ results."
  type: boolean
  inputBinding:
    prefix: -peptideprophet_analyzed
- id: score_type
  doc: "[Percolator only] Which of the Percolator scores to report as 'the' score\
    \ for a peptide hit (default: 'qvalue' valid: 'qvalue', 'PEP', 'score')"
  type: string
  inputBinding:
    prefix: -score_type
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
- IDFileConverter
