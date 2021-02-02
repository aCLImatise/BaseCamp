version 1.0

task Fastqmultx {
  input {
    Int? output_files_one
    String? determine_barcodes_indexed
    String? determine_barcodes_read
    Int? determine_barcodes_using
    Int? use_barcodes_codes
    Boolean? use_barcodes_read
    Boolean? force_beginning_line
    Boolean? force_end_line
    Int? divide_threshold_sensitive
    String? use_groups_matching
    Boolean? trim_barcodes_writing
    Boolean? execute_print_list
    String? verify_mated_d
    Int? allow_n_mismatches
    Int? allow_nm_mismatches
    Int? require_minimum_distance
    Int? require_minimum_quality
  }
  command <<<
    fastq_multx \
      ~{if defined(output_files_one) then ("-o " +  '"' + output_files_one + '"') else ""} \
      ~{if defined(determine_barcodes_indexed) then ("-g " +  '"' + determine_barcodes_indexed + '"') else ""} \
      ~{if defined(determine_barcodes_read) then ("-l " +  '"' + determine_barcodes_read + '"') else ""} \
      ~{if defined(determine_barcodes_using) then ("-L " +  '"' + determine_barcodes_using + '"') else ""} \
      ~{if defined(use_barcodes_codes) then ("-B " +  '"' + use_barcodes_codes + '"') else ""} \
      ~{if (use_barcodes_read) then "-H" else ""} \
      ~{if (force_beginning_line) then "-b" else ""} \
      ~{if (force_end_line) then "-e" else ""} \
      ~{if defined(divide_threshold_sensitive) then ("-t " +  '"' + divide_threshold_sensitive + '"') else ""} \
      ~{if defined(use_groups_matching) then ("-G " +  '"' + use_groups_matching + '"') else ""} \
      ~{if (trim_barcodes_writing) then "-x" else ""} \
      ~{if (execute_print_list) then "-n" else ""} \
      ~{if defined(verify_mated_d) then ("-v " +  '"' + verify_mated_d + '"') else ""} \
      ~{if defined(allow_n_mismatches) then ("-m " +  '"' + allow_n_mismatches + '"') else ""} \
      ~{if defined(allow_nm_mismatches) then ("-M " +  '"' + allow_nm_mismatches + '"') else ""} \
      ~{if defined(require_minimum_distance) then ("-d " +  '"' + require_minimum_distance + '"') else ""} \
      ~{if defined(require_minimum_quality) then ("-q " +  '"' + require_minimum_quality + '"') else ""}
  >>>
  parameter_meta {
    output_files_one: "Output files (one per input, required)"
    determine_barcodes_indexed: "Determine barcodes from the indexed read SEQFIL"
    determine_barcodes_read: "Determine barcodes from any read, using BCFIL as a master list"
    determine_barcodes_using: "Determine barcodes from <read1.fq>, using BCFIL as a master list"
    use_barcodes_codes: "Use barcodes from BCFIL, no determination step, codes in <read1.fq>"
    use_barcodes_read: "Use barcodes from illumina's header, instead of a read"
    force_beginning_line: "Force beginning of line (5') for barcode matching"
    force_end_line: "Force end of line (3') for barcode matching"
    divide_threshold_sensitive: "Divide threshold for auto-determine by factor NUM (1), > 1 = more sensitive"
    use_groups_matching: "Use group(s) matching NAME only"
    trim_barcodes_writing: "Don't trim barcodes off before writing out destination"
    execute_print_list: "Don't execute, just print likely barcode list"
    verify_mated_d: "Verify that mated id's match up to character C (Use ' ' for illumina)"
    allow_n_mismatches: "Allow N mismatches in union of all indexes, unless -M is supplied. (1)"
    allow_nm_mismatches: "Allow N,M mismatches in indexes 1,2 respectively (see -m N) (not used)"
    require_minimum_distance: "Require a minimum distance of N between the best and next best (2)"
    require_minimum_quality: "Require a minimum phred quality of N to accept a barcode base (0)"
  }
  output {
    File out_stdout = stdout()
  }
}