class: CommandLineTool
id: vcf2json.py.cwl
inputs:
- id: in_input
  doc: path to a VCF file
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_file_prefix
  doc: "Path to the json output file (without file extension).\nDefault: sample_name"
  type: File?
  inputBinding:
    prefix: --output_file_prefix
- id: in_no_zip
  doc: "Do not gzip json when writing file. (default: Yes,\ngzip it.)"
  type: boolean?
  inputBinding:
    prefix: --nozip
- id: in_vcf_is_filtered
  doc: "Required: Confirm that the input vcf is filtered. It\nis stronglyrecommended\
    \ to filter the file with Phenix\nusing the sameparameters that are used throughout\
    \ the\ndatabase this jason file is meant for."
  type: boolean?
  inputBinding:
    prefix: --vcf_is_filtered
- id: in_summary_info
  doc: Print summary of the json string
  type: boolean?
  inputBinding:
    prefix: --summary_info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "Path to the json output file (without file extension).\nDefault: sample_name"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2json.py
