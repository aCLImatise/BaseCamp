class: CommandLineTool
id: interprophet.rb.cwl
inputs:
- id: in_output_prefix
  doc: A string to prepend to the name of output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  inputBinding:
    prefix: --replace-output
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_threads
  doc: Number of processing threads to use. Set to 0 to autodetect an appropriate
    value [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_p_thresh
  doc: Probability threshold below which PSMs are discarded [0.05]
  type: double
  inputBinding:
    prefix: --p-thresh
- id: in_no_nss
  doc: Don't use NSS (Number of Sibling Searches) in Model [false]
  type: boolean
  inputBinding:
    prefix: --no-nss
- id: in_no_nrs
  doc: Don't use NRS (Number of Replicate Spectra) in Model [false]
  type: boolean
  inputBinding:
    prefix: --no-nrs
- id: in_no_nse
  doc: Don't use NSE (Number of Sibling Experiments) in Model [false]
  type: boolean
  inputBinding:
    prefix: --no-nse
- id: in_no_nsi
  doc: Don't use NSE (Number of Sibling Ions) in Model [false]
  type: boolean
  inputBinding:
    prefix: --no-nsi
- id: in_no_nsm
  doc: Don't use NSE (Number of Sibling Modifications) in Model [false]
  type: boolean
  inputBinding:
    prefix: --no-nsm
- id: in_file_two_dot_pep_dot_xml
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  outputBinding:
    glob: $(inputs.in_replace_output)
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- interprophet.rb
