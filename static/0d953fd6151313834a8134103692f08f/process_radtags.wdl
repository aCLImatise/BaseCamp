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
    Boolean? best_rad
    String? adapter_one
    String? adapter_two
    String? adapter_mm
    Boolean? retain_header
    Boolean? merge
    Boolean? filter_illumina
    Boolean? disable_rad_check
    String? len_limit
    Boolean? barcode_dist_one
    Boolean? barcode_dist_two
  }
  command <<<
    process_radtags \
      ~{true="--inline-null" false="" inline_null} \
      ~{true="--index-null" false="" index_null} \
      ~{true="--null-index" false="" null_index} \
      ~{true="--inline-inline" false="" inline_inline} \
      ~{true="--index-index" false="" index_index} \
      ~{true="--inline-index" false="" inline_index} \
      ~{true="--index-inline" false="" index_inline} \
      ~{true="--bestrad" false="" best_rad} \
      ~{if defined(adapter_one) then ("--adapter-1 " +  '"' + adapter_one + '"') else ""} \
      ~{if defined(adapter_two) then ("--adapter-2 " +  '"' + adapter_two + '"') else ""} \
      ~{if defined(adapter_mm) then ("--adapter-mm " +  '"' + adapter_mm + '"') else ""} \
      ~{true="--retain-header" false="" retain_header} \
      ~{true="--merge" false="" merge} \
      ~{true="--filter-illumina" false="" filter_illumina} \
      ~{true="--disable-rad-check" false="" disable_rad_check} \
      ~{if defined(len_limit) then ("--len-limit " +  '"' + len_limit + '"') else ""} \
      ~{true="--barcode-dist-1" false="" barcode_dist_one} \
      ~{true="--barcode-dist-2" false="" barcode_dist_two}
  >>>
  parameter_meta {
    inline_null: ":   barcode is inline with sequence, occurs only on single-end read (default)."
    index_null: ":    barcode is provded in FASTQ header (Illumina i5 or i7 read)."
    null_index: ":    barcode is provded in FASTQ header (Illumina i7 read if both i5 and i7 read are provided)."
    inline_inline: ": barcode is inline with sequence, occurs on single and paired-end read."
    index_index: ":   barcode is provded in FASTQ header (Illumina i5 and i7 reads)."
    inline_index: ":  barcode is inline with sequence on single-end read and occurs in FASTQ header (from either i5 or i7 read)."
    index_inline: ":  barcode occurs in FASTQ header (Illumina i5 or i7 read) and is inline with single-end sequence (for single-end data) on paired-end read (for paired-end data)."
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
}