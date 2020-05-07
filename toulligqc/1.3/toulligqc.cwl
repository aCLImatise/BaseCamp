class: CommandLineTool
id: toulligqc.cwl
inputs:
- id: conf_file
  doc: Specify config file
  type: File
  inputBinding:
    prefix: --conf-file
- id: report_name
  doc: Report name
  type: string
  inputBinding:
    prefix: --report-name
- id: fast5_source
  doc: Fast5 file source
  type: string
  inputBinding:
    prefix: --fast5-source
- id: sequencing_summary_source
  doc: Basecaller sequencing summary source
  type: string
  inputBinding:
    prefix: --sequencing-summary-source
- id: sequencing_summary_1dsqr_source
  doc: Basecaller 1dsq summary source
  type: string
  inputBinding:
    prefix: --sequencing-summary-1dsqr-source
- id: albacore_pipeline_source
  doc: Albacore pipeline log source
  type: string
  inputBinding:
    prefix: --albacore-pipeline-source
- id: fast_q_source
  doc: Fastq file source
  type: string
  inputBinding:
    prefix: --fastq-source
- id: telemetry_source
  doc: Telemetry file source
  type: string
  inputBinding:
    prefix: --telemetry-source
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: barcoding
  doc: Barcode usage
  type: boolean
  inputBinding:
    prefix: --barcoding
- id: sample_sheet_file
  doc: Path to sample sheet file
  type: string
  inputBinding:
    prefix: --samplesheet-file
- id: barcodes
  doc: Coma separated barcode list
  type: string
  inputBinding:
    prefix: --barcodes
- id: quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- toulligqc
