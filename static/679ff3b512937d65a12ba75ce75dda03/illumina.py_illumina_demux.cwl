class: CommandLineTool
id: illumina.py_illumina_demux.cwl
inputs:
- id: in_out_metrics
  doc: "Output ExtractIlluminaBarcodes metrics file. Default\nis to dump to a temp\
    \ file."
  type: File
  inputBinding:
    prefix: --outMetrics
- id: in_common_barcodes
  doc: "Write a TSV report of all barcode counts, in\ndescending order."
  type: string
  inputBinding:
    prefix: --commonBarcodes
- id: in_sample_sheet
  doc: "Override SampleSheet. Input tab or CSV file w/header\nand four named columns:\
    \ barcode_name, library_name,\nbarcode_sequence_1, barcode_sequence_2. Default\
    \ is to\nlook for a SampleSheet.csv in the inDir."
  type: File
  inputBinding:
    prefix: --sampleSheet
- id: in_flow_cell
  doc: 'Override flowcell ID (default: read from RunInfo.xml).'
  type: string
  inputBinding:
    prefix: --flowcell
- id: in_read_structure
  doc: "Override read structure (default: read from\nRunInfo.xml)."
  type: string
  inputBinding:
    prefix: --read_structure
- id: in_max_mismatches
  doc: "Picard ExtractIlluminaBarcodes MAX_MISMATCHES\n(default: 0)"
  type: long
  inputBinding:
    prefix: --max_mismatches
- id: in_minimum_base_quality
  doc: "Picard ExtractIlluminaBarcodes MINIMUM_BASE_QUALITY\n(default: 25)"
  type: long
  inputBinding:
    prefix: --minimum_base_quality
- id: in_min_mismatch_delta
  doc: "Picard ExtractIlluminaBarcodes MIN_MISMATCH_DELTA\n(default: None)"
  type: long
  inputBinding:
    prefix: --min_mismatch_delta
- id: in_max_no_calls
  doc: "Picard ExtractIlluminaBarcodes MAX_NO_CALLS (default:\nNone)"
  type: long
  inputBinding:
    prefix: --max_no_calls
- id: in_minimum_quality
  doc: "Picard ExtractIlluminaBarcodes MINIMUM_QUALITY\n(default: None)"
  type: string
  inputBinding:
    prefix: --minimum_quality
- id: in_compress_outputs
  doc: "Picard ExtractIlluminaBarcodes COMPRESS_OUTPUTS\n(default: None)"
  type: string
  inputBinding:
    prefix: --compress_outputs
- id: in_sequencing_center
  doc: "Picard IlluminaBasecallsToSam SEQUENCING_CENTER\n(default: None)"
  type: string
  inputBinding:
    prefix: --sequencing_center
- id: in_adapters_to_check
  doc: "[ADAPTERS_TO_CHECK [ADAPTERS_TO_CHECK ...]]\nPicard IlluminaBasecallsToSam\
    \ ADAPTERS_TO_CHECK\n(default: ('PAIRED_END', 'NEXTERA_V1', 'NEXTERA_V2'))"
  type: boolean
  inputBinding:
    prefix: --adapters_to_check
- id: in_platform
  doc: 'Picard IlluminaBasecallsToSam PLATFORM (default: None)'
  type: string
  inputBinding:
    prefix: --platform
- id: in_max_reads_in_ram_per_tile
  doc: "Picard IlluminaBasecallsToSam\nMAX_READS_IN_RAM_PER_TILE (default: 100000)"
  type: long
  inputBinding:
    prefix: --max_reads_in_ram_per_tile
- id: in_max_records_in_ram
  doc: "Picard IlluminaBasecallsToSam MAX_RECORDS_IN_RAM\n(default: 100000)"
  type: long
  inputBinding:
    prefix: --max_records_in_ram
- id: in_num_processors
  doc: "Picard IlluminaBasecallsToSam NUM_PROCESSORS (default:\n4)"
  type: long
  inputBinding:
    prefix: --num_processors
- id: in_apply_ea_mss_filter
  doc: "Picard IlluminaBasecallsToSam APPLY_EAMSS_FILTER\n(default: None)"
  type: string
  inputBinding:
    prefix: --apply_eamss_filter
- id: in_force_gc
  doc: "Picard IlluminaBasecallsToSam FORCE_GC (default:\nFalse)"
  type: string
  inputBinding:
    prefix: --force_gc
- id: in_first_tile
  doc: "Picard IlluminaBasecallsToSam FIRST_TILE (default:\nNone)"
  type: string
  inputBinding:
    prefix: --first_tile
- id: in_tile_limit
  doc: "Picard IlluminaBasecallsToSam TILE_LIMIT (default:\nNone)"
  type: string
  inputBinding:
    prefix: --tile_limit
- id: in_include_non_pf_reads
  doc: "Picard IlluminaBasecallsToSam INCLUDE_NON_PF_READS\n(default: False)"
  type: string
  inputBinding:
    prefix: --include_non_pf_reads
- id: in_run_start_date
  doc: "Picard IlluminaBasecallsToSam RUN_START_DATE (default:\nNone)"
  type: string
  inputBinding:
    prefix: --run_start_date
- id: in_read_group_id
  doc: "Picard IlluminaBasecallsToSam READ_GROUP_ID (default:\nNone)"
  type: string
  inputBinding:
    prefix: --read_group_id
- id: in_jvm_memory
  doc: 'JVM virtual memory size (default: 54g)'
  type: long
  inputBinding:
    prefix: --JVMmemory
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_in_dir
  doc: "Illumina BCL directory (or tar.gz of BCL directory).\nThis is the top-level\
    \ run directory."
  type: string
  inputBinding:
    position: 0
- id: in_lane
  doc: Lane number.
  type: string
  inputBinding:
    position: 1
- id: in_outdir
  doc: Output directory for BAM files.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_metrics
  doc: "Output ExtractIlluminaBarcodes metrics file. Default\nis to dump to a temp\
    \ file."
  type: File
  outputBinding:
    glob: $(inputs.in_out_metrics)
cwlVersion: v1.1
baseCommand:
- illumina.py
- illumina_demux
