class: CommandLineTool
id: vcf2json.py.cwl
inputs:
- id: input
  doc: path to a VCF file
  type: string
  inputBinding:
    prefix: --input
- id: output_file_prefix
  doc: 'Path to the json output file (without file extension). Default: sample_name'
  type: string
  inputBinding:
    prefix: --output_file_prefix
- id: no_zip
  doc: 'Do not gzip json when writing file. (default: Yes, gzip it.)'
  type: boolean
  inputBinding:
    prefix: --nozip
- id: vcf_is_filtered
  doc: 'Required: Confirm that the input vcf is filtered. It is stronglyrecommended
    to filter the file with Phenix using the sameparameters that are used throughout
    the database this jason file is meant for.'
  type: boolean
  inputBinding:
    prefix: --vcf_is_filtered
- id: summary_info
  doc: Print summary of the json string
  type: boolean
  inputBinding:
    prefix: --summary_info
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2json.py
