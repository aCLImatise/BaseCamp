class: CommandLineTool
id: pout2mzid.cwl
inputs:
- id: in_percolator_xml_result
  doc: '[ --percolatorfile ] [Value] Percolator Out XML result file'
  type: File
  inputBinding:
    prefix: -p
- id: in_mzidentml_input_file
  doc: '[ --mzidfile ] [Value]       MzIdentML input file'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_sets_input_directory
  doc: "[ --inputdir ] [Value]       Sets the mzIdentML input directory. All\nmzIdentML\
    \ inputfiles must be in that\ndirectory"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_change_outputfile_originalfilenamemziddefault
  doc: "[ --changeoutput ] [Value]   Change the outputfile to original\nfilename+[Value]+.mzid.\n\
    DEFAULT: output to stdout"
  type: File
  inputBinding:
    prefix: -c
- id: in_sets_output_directory
  doc: "[ --outputdir ] [Value]      Sets the output directory if none exist, it\n\
    will be created."
  type: Directory
  inputBinding:
    prefix: -o
- id: in_file_containing_list
  doc: '[ --filesmzid ] [Value]      File containing a list of mzIdentML filenames'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_only_adds_results
  doc: "[ --decoy ]                  Only adds results to entries with decoy set\n\
    to true. DEFAULT: false"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_sets_validation_performed
  doc: "[ --validate ]               Sets that validation of XML schema should not\n\
    be performed. Faster parsing."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_sets_warning_shouldterminate
  doc: "[ --warning ]                Sets that upon warning the software should\n\
    terminate.\n"
  type: boolean
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_percolator_xml_result
  doc: '[ --percolatorfile ] [Value] Percolator Out XML result file'
  type: File
  outputBinding:
    glob: $(inputs.in_percolator_xml_result)
- id: out_change_outputfile_originalfilenamemziddefault
  doc: "[ --changeoutput ] [Value]   Change the outputfile to original\nfilename+[Value]+.mzid.\n\
    DEFAULT: output to stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_change_outputfile_originalfilenamemziddefault)
- id: out_sets_output_directory
  doc: "[ --outputdir ] [Value]      Sets the output directory if none exist, it\n\
    will be created."
  type: Directory
  outputBinding:
    glob: $(inputs.in_sets_output_directory)
cwlVersion: v1.1
baseCommand:
- pout2mzid
