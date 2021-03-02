version 1.0

task Latfload {
  input {
    File? path_name_output
    Boolean? quality
    File? tmpfs
    Int? qual_quant
    Int? cache_size
    Int? max_err_count
    Boolean? platform
    Boolean? max_err_pct
    Boolean? ignore_illumina_tags
    File? xml_log
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String indices
    String quit_dot
    File file_dot
  }
  command <<<
    latf_load \
      ~{indices} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(path_name_output) then ("--output " +  '"' + path_name_output + '"') else ""} \
      ~{if (quality) then "--quality" else ""} \
      ~{if defined(tmpfs) then ("--tmpfs " +  '"' + tmpfs + '"') else ""} \
      ~{if defined(qual_quant) then ("--qual-quant " +  '"' + qual_quant + '"') else ""} \
      ~{if defined(cache_size) then ("--cache-size " +  '"' + cache_size + '"') else ""} \
      ~{if defined(max_err_count) then ("--max-err-count " +  '"' + max_err_count + '"') else ""} \
      ~{if (platform) then "--platform" else ""} \
      ~{if (max_err_pct) then "--max-err-pct" else ""} \
      ~{if (ignore_illumina_tags) then "--ignore-illumina-tags" else ""} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_name_output: "Path and Name of the output database."
    quality: "Quality encoding (PHRED_33, PHRED_64,\\nLOGODDS)"
    tmpfs: "Path to be used for scratch files."
    qual_quant: "Quality scores quantization level, can be\\nnumber (0: none default, 1: 2bit, 2:\\n1bit), or string like\\n'1:10,10:20,20:30,30:-' (which is\\nequivalent to 1)."
    cache_size: "Set the cache size in MB for the temporary"
    max_err_count: "Set the maximum number of errors to ignore\\nfrom the FASTQ file"
    platform: "Platform (ILLUMINA, LS454, SOLID,\\nCOMPLETE_GENOMICS, HELICOS, PACBIO,\\nIONTORRENT, CAPILLARY)"
    max_err_pct: "acceptable percentage of spots creation\\nerrors, default is 5"
    ignore_illumina_tags: "ignore barcodes contained in\\nIllumina-formatted names"
    xml_log: "produce XML-formatted log file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    indices: "--max-rec-count <count>          Set the maximum number of records to "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "latf-load : 2.10.8"
  }
  output {
    File out_stdout = stdout()
    File out_path_name_output = "${in_path_name_output}"
  }
}