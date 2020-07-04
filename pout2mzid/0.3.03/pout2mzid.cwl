class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pout2mzid.cwl
inputs:
- id: percolator_out_xml
  doc: '[ --percolatorfile ] [Value] Percolator Out XML result file'
  type: boolean
  inputBinding:
    prefix: -p
- id: mzidentml_input_file
  doc: '[ --mzidfile ] [Value]       MzIdentML input file'
  type: boolean
  inputBinding:
    prefix: -m
- id: sets_mzidentml_directory
  doc: '[ --inputdir ] [Value]       Sets the mzIdentML input directory. All  mzIdentML
    inputfiles must be in that  directory'
  type: boolean
  inputBinding:
    prefix: -i
- id: default_output_stdout
  doc: '[ --changeoutput ] [Value]   Change the outputfile to original  filename+[Value]+.mzid.
    DEFAULT: output to stdout'
  type: boolean
  inputBinding:
    prefix: -c
- id: sets_output_directory
  doc: '[ --outputdir ] [Value]      Sets the output directory if none exist, it  will
    be created.'
  type: boolean
  inputBinding:
    prefix: -o
- id: file_containing_list
  doc: '[ --filesmzid ] [Value]      File containing a list of mzIdentML filenames'
  type: boolean
  inputBinding:
    prefix: -f
- id: only_adds_results
  doc: '[ --decoy ]                  Only adds results to entries with decoy set  to
    true. DEFAULT: false'
  type: boolean
  inputBinding:
    prefix: -d
- id: sets_validation_xml
  doc: '[ --validate ]               Sets that validation of XML schema should not
    be performed. Faster parsing.'
  type: boolean
  inputBinding:
    prefix: -v
- id: sets_should_terminate
  doc: '[ --warning ]                Sets that upon warning the software should  terminate.'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- pout2mzid
