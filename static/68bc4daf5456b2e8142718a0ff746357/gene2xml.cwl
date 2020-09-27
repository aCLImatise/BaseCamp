class: CommandLineTool
id: gene2xml.cwl
inputs:
- id: in_path_files_optional
  doc: Path to Files [String]  Optional
  type: boolean
  inputBinding:
    prefix: -p
- id: in_path_results_optional
  doc: Path for Results [String]  Optional
  type: boolean
  inputBinding:
    prefix: -r
- id: in_single_input_file
  doc: "Single Input File [File In]  Optional\ndefault = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_single_output_file
  doc: "Single Output File [File Out]  Optional\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_file_binary_optionaldefault
  doc: "File is Binary [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_file_compressed_optionaldefault
  doc: "File is Compressed [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_taxon_id_filter
  doc: "Taxon ID to Filter [Integer]  Optional\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_extract_text_optionaldefault
  doc: "Extract .ags -> text .agc [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_combine_text_testing
  doc: "Combine .agc -> text .ags (for testing) [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -y
- id: in_combine_binary_then
  doc: "Combine .agc -> binary .ags, then gzip [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -z
- id: in_log_processing_optionaldefault
  doc: "Log Processing [T/F]  Optional\ndefault = F\n"
  type: boolean
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_single_output_file
  doc: "Single Output File [File Out]  Optional\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_single_output_file)
cwlVersion: v1.1
baseCommand:
- gene2xml
