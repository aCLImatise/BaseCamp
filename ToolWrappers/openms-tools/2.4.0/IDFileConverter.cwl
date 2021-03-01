class: CommandLineTool
id: IDFileConverter.cwl
inputs:
- id: in_in
  doc: "*           Input file or directory containing the data to convert. This may\
    \ be:\n- a single file in a multi-purpose XML format (.pepXML, .protXML, .idXML,\
    \ .mzid),\n- a single file in a search engine-specific format (Mascot: .mascotXML,\
    \ OMSSA: .omssaXML, X! Tandem: .xml, Percolator: .psms, xQuest: .xquest.xml),\n\
    - a single text file (tab separated) with one line for all peptide sequences matching\
    \ a spectrum (top N hits),\n- for Sequest results, a directory containing .out\
    \ files.\n(valid formats: 'pepXML', 'protXML', 'mascotXML', 'omssaXML', 'xml',\
    \ 'psms', 'tsv', 'idXML', 'mzid', 'xquest.xml')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*               Output file (valid formats: 'idXML', 'mzid', 'pepXML', 'FASTA',\
    \ 'xquest.xml')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Output file type (default: determined from file extension) (valid: 'idXML',\
    \ 'mzid', 'pepXML', 'FASTA', 'xquest.xml')"
  type: File?
  inputBinding:
    prefix: -out_type
- id: in_mz_file
  doc: "[pepXML, Sequest, Mascot, X! Tandem, mzid, Percolator only] Retention times\
    \ and native spectrum ids (spectrum_references) will be looked up in this file\
    \ (valid formats: 'mzML', 'mzXML', 'mzData')"
  type: File?
  inputBinding:
    prefix: -mz_file
- id: in_mz_name
  doc: "[pepXML only] Experiment filename/path (extension will be removed) to match\
    \ in the pepXML file ('base_name' attribute). Only necessary if different from\
    \ 'mz_file'."
  type: File?
  inputBinding:
    prefix: -mz_name
- id: in_peptide_prophet_analyzed
  doc: "[pepXML output only] Write output in the format of a PeptideProphet analysis\
    \ result. By default a 'raw' pepXML is produced that contains only search engine\
    \ results."
  type: boolean?
  inputBinding:
    prefix: -peptideprophet_analyzed
- id: in_score_type
  doc: "[Percolator only] Which of the Percolator scores to report as 'the' score\
    \ for a peptide hit (default: 'qvalue' valid: 'qvalue', 'PEP', 'score')"
  type: string?
  inputBinding:
    prefix: -score_type
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
  doc: "*               Output file (valid formats: 'idXML', 'mzid', 'pepXML', 'FASTA',\
    \ 'xquest.xml')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Output file type (default: determined from file extension) (valid: 'idXML',\
    \ 'mzid', 'pepXML', 'FASTA', 'xquest.xml')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_type)
hints: []
cwlVersion: v1.1
baseCommand:
- IDFileConverter
