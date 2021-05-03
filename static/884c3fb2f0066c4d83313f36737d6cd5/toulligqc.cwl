class: CommandLineTool
id: toulligqc.cwl
inputs:
- id: in_sequencing_summary_source
  doc: Basecaller sequencing summary source
  type: string?
  inputBinding:
    prefix: --sequencing-summary-source
- id: in_telemetry_source
  doc: Basecaller telemetry file source
  type: File?
  inputBinding:
    prefix: --telemetry-source
- id: in_fast_five_source
  doc: Fast5 file source (necessary if no telemetry file)
  type: long?
  inputBinding:
    prefix: --fast5-source
- id: in_report_name
  doc: Report name
  type: string?
  inputBinding:
    prefix: --report-name
- id: in_output_directory
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_html_report_path
  doc: Output HTML report
  type: File?
  inputBinding:
    prefix: --html-report-path
- id: in_data_report_path
  doc: Output data report
  type: File?
  inputBinding:
    prefix: --data-report-path
- id: in_images_directory
  doc: Images directory
  type: Directory?
  inputBinding:
    prefix: --images-directory
- id: in_sequencing_summary_one_d_sqr_source
  doc: Basecaller 1dsq summary source
  type: long?
  inputBinding:
    prefix: --sequencing-summary-1dsqr-source
- id: in_barcoding
  doc: Option for barcode usage
  type: boolean?
  inputBinding:
    prefix: --barcoding
- id: in_barcodes
  doc: Coma separated barcode list
  type: string?
  inputBinding:
    prefix: --barcodes
- id: in_quiet
  doc: Quiet mode
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_force
  doc: Force overwriting of existing files
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_v_two_dot_zero_dot_one
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/toulligqc:2.0.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- toulligqc
