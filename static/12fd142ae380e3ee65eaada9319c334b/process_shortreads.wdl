version 1.0

task ProcessShortreads {
  input {
    Boolean? inline_null
    Boolean? index_null
    Boolean? null_index
    Boolean? inline_inline
    Boolean? index_index
    Boolean? inline_index
    Boolean? index_inline
    String? adapter_one
    String? adapter_two
    String? adapter_mm
    Boolean? retain_header
    Boolean? merge
    Boolean? no_read_trimming
    String? len_limit
    Boolean? filter_illumina
    Boolean? barcode_dist
    Boolean? mate_pair
    Boolean? no_overhang
  }
  command <<<
    process_shortreads \
      ~{true="--inline-null" false="" inline_null} \
      ~{true="--index-null" false="" index_null} \
      ~{true="--null-index" false="" null_index} \
      ~{true="--inline-inline" false="" inline_inline} \
      ~{true="--index-index" false="" index_index} \
      ~{true="--inline-index" false="" inline_index} \
      ~{true="--index-inline" false="" index_inline} \
      ~{if defined(adapter_one) then ("--adapter-1 " +  '"' + adapter_one + '"') else ""} \
      ~{if defined(adapter_two) then ("--adapter-2 " +  '"' + adapter_two + '"') else ""} \
      ~{if defined(adapter_mm) then ("--adapter-mm " +  '"' + adapter_mm + '"') else ""} \
      ~{true="--retain-header" false="" retain_header} \
      ~{true="--merge" false="" merge} \
      ~{true="--no-read-trimming" false="" no_read_trimming} \
      ~{if defined(len_limit) then ("--len-limit " +  '"' + len_limit + '"') else ""} \
      ~{true="--filter-illumina" false="" filter_illumina} \
      ~{true="--barcode-dist" false="" barcode_dist} \
      ~{true="--mate-pair" false="" mate_pair} \
      ~{true="--no-overhang" false="" no_overhang}
  >>>
  parameter_meta {
    inline_null: ":   barcode is inline with sequence, occurs only on single-end read (default)."
    index_null: ":    barcode is provded in FASTQ header (Illumina i5 or i7 read)."
    null_index: ":    barcode is provded in FASTQ header (Illumina i7 read if both i5 and i7 read are provided)."
    inline_inline: ": barcode is inline with sequence, occurs on single and paired-end read."
    index_index: ":   barcode is provded in FASTQ header (Illumina i5 and i7 reads)."
    inline_index: ":  barcode is inline with sequence on single-end read and occurs in FASTQ header (from either i5 or i7 read)."
    index_inline: ":  barcode occurs in FASTQ header (Illumina i5 or i7 read) and is inline with single-end sequence (for single-end data) on paired-end read (for paired-end data)."
    adapter_one: ": provide adaptor sequence that may occur on the first read for filtering."
    adapter_two: ": provide adaptor sequence that may occur on the paired-read for filtering."
    adapter_mm: ": number of mismatches allowed in the adapter sequence."
    retain_header: ": retain unmodified FASTQ headers in the output."
    merge: ": if no barcodes are specified, merge all input files into a single output file (or single pair of files)."
    no_read_trimming: ": do not trim low quality reads, just discard them."
    len_limit: ": when trimming sequences, specify the minimum length a sequence must be to keep it (default 31bp)."
    filter_illumina: ": discard reads that have been marked by Illumina's chastity/purity filter as failing."
    barcode_dist: ": provide the distace between barcodes to allow for barcode rescue (default 2)"
    mate_pair: ": raw reads are circularized mate-pair data, first read will be reverse complemented."
    no_overhang: ": data does not contain an overhang nucleotide between barcode and seqeunce."
  }
}