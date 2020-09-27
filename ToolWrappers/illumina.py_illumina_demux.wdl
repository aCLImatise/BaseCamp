version 1.0

task IlluminapyIlluminaDemux {
  input {
    File? out_metrics
    String? common_barcodes
    File? sample_sheet
    String? flow_cell
    String? read_structure
    Int? max_mismatches
    Int? minimum_base_quality
    Int? min_mismatch_delta
    Int? max_no_calls
    String? minimum_quality
    String? compress_outputs
    String? sequencing_center
    Boolean? adapters_to_check
    String? platform
    Int? max_reads_in_ram_per_tile
    Int? max_records_in_ram
    Int? num_processors
    String? apply_ea_mss_filter
    String? force_gc
    String? first_tile
    String? tile_limit
    String? include_non_pf_reads
    String? run_start_date
    String? read_group_id
    Int? jvm_memory
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_dir
    String lane
    String outdir
  }
  command <<<
    illumina_py illumina_demux \
      ~{in_dir} \
      ~{lane} \
      ~{outdir} \
      ~{if defined(out_metrics) then ("--outMetrics " +  '"' + out_metrics + '"') else ""} \
      ~{if defined(common_barcodes) then ("--commonBarcodes " +  '"' + common_barcodes + '"') else ""} \
      ~{if defined(sample_sheet) then ("--sampleSheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(flow_cell) then ("--flowcell " +  '"' + flow_cell + '"') else ""} \
      ~{if defined(read_structure) then ("--read_structure " +  '"' + read_structure + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max_mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("--minimum_base_quality " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(min_mismatch_delta) then ("--min_mismatch_delta " +  '"' + min_mismatch_delta + '"') else ""} \
      ~{if defined(max_no_calls) then ("--max_no_calls " +  '"' + max_no_calls + '"') else ""} \
      ~{if defined(minimum_quality) then ("--minimum_quality " +  '"' + minimum_quality + '"') else ""} \
      ~{if defined(compress_outputs) then ("--compress_outputs " +  '"' + compress_outputs + '"') else ""} \
      ~{if defined(sequencing_center) then ("--sequencing_center " +  '"' + sequencing_center + '"') else ""} \
      ~{if (adapters_to_check) then "--adapters_to_check" else ""} \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if defined(max_reads_in_ram_per_tile) then ("--max_reads_in_ram_per_tile " +  '"' + max_reads_in_ram_per_tile + '"') else ""} \
      ~{if defined(max_records_in_ram) then ("--max_records_in_ram " +  '"' + max_records_in_ram + '"') else ""} \
      ~{if defined(num_processors) then ("--num_processors " +  '"' + num_processors + '"') else ""} \
      ~{if defined(apply_ea_mss_filter) then ("--apply_eamss_filter " +  '"' + apply_ea_mss_filter + '"') else ""} \
      ~{if defined(force_gc) then ("--force_gc " +  '"' + force_gc + '"') else ""} \
      ~{if defined(first_tile) then ("--first_tile " +  '"' + first_tile + '"') else ""} \
      ~{if defined(tile_limit) then ("--tile_limit " +  '"' + tile_limit + '"') else ""} \
      ~{if defined(include_non_pf_reads) then ("--include_non_pf_reads " +  '"' + include_non_pf_reads + '"') else ""} \
      ~{if defined(run_start_date) then ("--run_start_date " +  '"' + run_start_date + '"') else ""} \
      ~{if defined(read_group_id) then ("--read_group_id " +  '"' + read_group_id + '"') else ""} \
      ~{if defined(jvm_memory) then ("--JVMmemory " +  '"' + jvm_memory + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  parameter_meta {
    out_metrics: "Output ExtractIlluminaBarcodes metrics file. Default\\nis to dump to a temp file."
    common_barcodes: "Write a TSV report of all barcode counts, in\\ndescending order."
    sample_sheet: "Override SampleSheet. Input tab or CSV file w/header\\nand four named columns: barcode_name, library_name,\\nbarcode_sequence_1, barcode_sequence_2. Default is to\\nlook for a SampleSheet.csv in the inDir."
    flow_cell: "Override flowcell ID (default: read from RunInfo.xml)."
    read_structure: "Override read structure (default: read from\\nRunInfo.xml)."
    max_mismatches: "Picard ExtractIlluminaBarcodes MAX_MISMATCHES\\n(default: 0)"
    minimum_base_quality: "Picard ExtractIlluminaBarcodes MINIMUM_BASE_QUALITY\\n(default: 25)"
    min_mismatch_delta: "Picard ExtractIlluminaBarcodes MIN_MISMATCH_DELTA\\n(default: None)"
    max_no_calls: "Picard ExtractIlluminaBarcodes MAX_NO_CALLS (default:\\nNone)"
    minimum_quality: "Picard ExtractIlluminaBarcodes MINIMUM_QUALITY\\n(default: None)"
    compress_outputs: "Picard ExtractIlluminaBarcodes COMPRESS_OUTPUTS\\n(default: None)"
    sequencing_center: "Picard IlluminaBasecallsToSam SEQUENCING_CENTER\\n(default: None)"
    adapters_to_check: "[ADAPTERS_TO_CHECK [ADAPTERS_TO_CHECK ...]]\\nPicard IlluminaBasecallsToSam ADAPTERS_TO_CHECK\\n(default: ('PAIRED_END', 'NEXTERA_V1', 'NEXTERA_V2'))"
    platform: "Picard IlluminaBasecallsToSam PLATFORM (default: None)"
    max_reads_in_ram_per_tile: "Picard IlluminaBasecallsToSam\\nMAX_READS_IN_RAM_PER_TILE (default: 100000)"
    max_records_in_ram: "Picard IlluminaBasecallsToSam MAX_RECORDS_IN_RAM\\n(default: 100000)"
    num_processors: "Picard IlluminaBasecallsToSam NUM_PROCESSORS (default:\\n4)"
    apply_ea_mss_filter: "Picard IlluminaBasecallsToSam APPLY_EAMSS_FILTER\\n(default: None)"
    force_gc: "Picard IlluminaBasecallsToSam FORCE_GC (default:\\nFalse)"
    first_tile: "Picard IlluminaBasecallsToSam FIRST_TILE (default:\\nNone)"
    tile_limit: "Picard IlluminaBasecallsToSam TILE_LIMIT (default:\\nNone)"
    include_non_pf_reads: "Picard IlluminaBasecallsToSam INCLUDE_NON_PF_READS\\n(default: False)"
    run_start_date: "Picard IlluminaBasecallsToSam RUN_START_DATE (default:\\nNone)"
    read_group_id: "Picard IlluminaBasecallsToSam READ_GROUP_ID (default:\\nNone)"
    jvm_memory: "JVM virtual memory size (default: 54g)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_dir: "Illumina BCL directory (or tar.gz of BCL directory).\\nThis is the top-level run directory."
    lane: "Lane number."
    outdir: "Output directory for BAM files."
  }
  output {
    File out_stdout = stdout()
    File out_out_metrics = "${in_out_metrics}"
  }
}