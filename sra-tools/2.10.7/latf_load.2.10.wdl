version 1.0

task LatfLoad.2.10.7 {
  input {
    File? path_name_output
    Boolean? quality
    File? tmpfs
    String? qual_quant
    String? cache_size
    String? max_rec_count
    String? max_err_count
    Boolean? platform
    Boolean? max_err_pct
    Boolean? ignore_illumina_tags
    String? xml_log
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String summary
  }
  command <<<
    latf-load.2.10.7 \
      ~{summary} \
      ~{if defined(path_name_output) then ("--output " +  '"' + path_name_output + '"') else ""} \
      ~{true="--quality" false="" quality} \
      ~{if defined(tmpfs) then ("--tmpfs " +  '"' + tmpfs + '"') else ""} \
      ~{if defined(qual_quant) then ("--qual-quant " +  '"' + qual_quant + '"') else ""} \
      ~{if defined(cache_size) then ("--cache-size " +  '"' + cache_size + '"') else ""} \
      ~{if defined(max_rec_count) then ("--max-rec-count " +  '"' + max_rec_count + '"') else ""} \
      ~{if defined(max_err_count) then ("--max-err-count " +  '"' + max_err_count + '"') else ""} \
      ~{true="--platform" false="" platform} \
      ~{true="--max-err-pct" false="" max_err_pct} \
      ~{true="--ignore-illumina-tags" false="" ignore_illumina_tags} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    path_name_output: "Path and Name of the output database. "
    quality: "Quality encoding (PHRED_33, PHRED_64,  LOGODDS) "
    tmpfs: "Path to be used for scratch files. "
    qual_quant: "Quality scores quantization level, can be  number (0: none default, 1: 2bit, 2:  1bit), or string like  '1:10,10:20,20:30,30:-' (which is  equivalent to 1). "
    cache_size: "Set the cache size in MB for the temporary  indices "
    max_rec_count: "Set the maximum number of records to  process from the FASTQ file "
    max_err_count: "Set the maximum number of errors to ignore  from the FASTQ file "
    platform: "Platform (ILLUMINA, LS454, SOLID,  COMPLETE_GENOMICS, HELICOS, PACBIO,  IONTORRENT, CAPILLARY) "
    max_err_pct: "acceptable percentage of spots creation  errors, default is 5 "
    ignore_illumina_tags: "ignore barcodes contained in  Illumina-formatted names "
    xml_log: "produce XML-formatted log file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    summary: ""
  }
}