class: CommandLineTool
id: toulligqc.cwl
inputs:
- id: in_conf_file
  doc: Specify config file
  type: File
  inputBinding:
    prefix: --conf-file
- id: in_report_name
  doc: Report name
  type: string
  inputBinding:
    prefix: --report-name
- id: in_fast_five_source
  doc: Fast5 file source
  type: long
  inputBinding:
    prefix: --fast5-source
- id: in_sequencing_summary_source
  doc: Basecaller sequencing summary source
  type: string
  inputBinding:
    prefix: --sequencing-summary-source
- id: in_sequencing_summary_one_d_sqr_source
  doc: Basecaller 1dsq summary source
  type: long
  inputBinding:
    prefix: --sequencing-summary-1dsqr-source
- id: in_albacore_pipeline_source
  doc: Albacore pipeline log source
  type: string
  inputBinding:
    prefix: --albacore-pipeline-source
- id: in_fast_q_source
  doc: Fastq file source
  type: File
  inputBinding:
    prefix: --fastq-source
- id: in_telemetry_source
  doc: Telemetry file source
  type: File
  inputBinding:
    prefix: --telemetry-source
- id: in_output
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --output
- id: in_barcoding
  doc: Barcode usage
  type: boolean
  inputBinding:
    prefix: --barcoding
- id: in_sample_sheet_file
  doc: Path to sample sheet file
  type: File
  inputBinding:
    prefix: --samplesheet-file
- id: in_barcodes
  doc: Coma separated barcode list
  type: string
  inputBinding:
    prefix: --barcodes
- id: in_quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- toulligqc
