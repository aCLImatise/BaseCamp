version 1.0

task ProcessRadtags {
  input {
    Boolean? inline_null
    Boolean? index_null
    Boolean? null_index
    Boolean? inline_inline
    Boolean? index_index
    Boolean? inline_index
    Boolean? index_inline
    Int? renz_one
    Int? renz_two
    Boolean? best_rad
    Int? adapter_one
    Int? adapter_two
    Int? adapter_mm
    Boolean? retain_header
    Boolean? merge
    Boolean? filter_illumina
    Boolean? disable_rad_check
    Int? len_limit
    Boolean? barcode_dist_one
    Boolean? barcode_dist_two
  }
  command <<<
    process_radtags \
      ~{if (inline_null) then "--inline-null" else ""} \
      ~{if (index_null) then "--index-null" else ""} \
      ~{if (null_index) then "--null-index" else ""} \
      ~{if (inline_inline) then "--inline-inline" else ""} \
      ~{if (index_index) then "--index-index" else ""} \
      ~{if (inline_index) then "--inline-index" else ""} \
      ~{if (index_inline) then "--index-inline" else ""} \
      ~{if defined(renz_one) then ("--renz-1 " +  '"' + renz_one + '"') else ""} \
      ~{if defined(renz_two) then ("--renz-2 " +  '"' + renz_two + '"') else ""} \
      ~{if (best_rad) then "--bestrad" else ""} \
      ~{if defined(adapter_one) then ("--adapter-1 " +  '"' + adapter_one + '"') else ""} \
      ~{if defined(adapter_two) then ("--adapter-2 " +  '"' + adapter_two + '"') else ""} \
      ~{if defined(adapter_mm) then ("--adapter-mm " +  '"' + adapter_mm + '"') else ""} \
      ~{if (retain_header) then "--retain-header" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (filter_illumina) then "--filter-illumina" else ""} \
      ~{if (disable_rad_check) then "--disable-rad-check" else ""} \
      ~{if defined(len_limit) then ("--len-limit " +  '"' + len_limit + '"') else ""} \
      ~{if (barcode_dist_one) then "--barcode-dist-1" else ""} \
      ~{if (barcode_dist_two) then "--barcode-dist-2" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    inline_null: ":   barcode is inline with sequence, occurs only on single-end read (default)."
    index_null: ":    barcode is provded in FASTQ header (Illumina i5 or i7 read)."
    null_index: ":    barcode is provded in FASTQ header (Illumina i7 read if both i5 and i7 read are provided)."
    inline_inline: ": barcode is inline with sequence, occurs on single and paired-end read."
    index_index: ":   barcode is provded in FASTQ header (Illumina i5 and i7 reads)."
    inline_index: ":  barcode is inline with sequence on single-end read and occurs in FASTQ header (from either i5 or i7 read)."
    index_inline: ":  barcode occurs in FASTQ header (Illumina i5 or i7 read) and is inline with single-end sequence (for single-end data) on paired-end read (for paired-end data)."
    renz_one: ": provide the restriction enzyme used (cut site occurs on single-end read)"
    renz_two: ": if a double digest was used, provide the second restriction enzyme used (cut site occurs on the paired-end read)."
    best_rad: ": library was generated using BestRAD, check for restriction enzyme on either read and potentially tranpose reads."
    adapter_one: ": provide adaptor sequence that may occur on the single-end read for filtering."
    adapter_two: ": provide adaptor sequence that may occur on the paired-read for filtering."
    adapter_mm: ": number of mismatches allowed in the adapter sequence."
    retain_header: ": retain unmodified FASTQ headers in the output."
    merge: ": if no barcodes are specified, merge all input files into a single output file."
    filter_illumina: ": discard reads that have been marked by Illumina's chastity/purity filter as failing."
    disable_rad_check: ": disable checking if the RAD site is intact."
    len_limit: ": specify a minimum sequence length (useful if your data has already been trimmed)."
    barcode_dist_one: ": the number of allowed mismatches when rescuing single-end barcodes (default 1)."
    barcode_dist_two: ": the number of allowed mismatches when rescuing paired-end barcodes (defaults to --barcode-dist-1)."
  }
  output {
    File out_stdout = stdout()
  }
}