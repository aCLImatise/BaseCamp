version 1.0

task AmptkSRAsubmit {
  input {
    Boolean? input_fastq_file
    Boolean? out
    Boolean? mapping_file
    File? barcode_fast_a
    Boolean? bio_sample
    Boolean? platform
    Boolean? names
    Boolean? description
    Boolean? fwd_primer
    Boolean? rev_primer
    Boolean? append
    Boolean? primer_mismatch
    Boolean? barcode_mismatch
    Boolean? require_primer
    Boolean? min_len
    String arguments
  }
  command <<<
    amptk SRA_submit \
      ~{arguments} \
      ~{if (input_fastq_file) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (mapping_file) then "--mapping_file" else ""} \
      ~{if defined(barcode_fast_a) then ("--barcode_fasta " +  '"' + barcode_fast_a + '"') else ""} \
      ~{if (bio_sample) then "--biosample" else ""} \
      ~{if (platform) then "--platform" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (fwd_primer) then "--fwd_primer" else ""} \
      ~{if (rev_primer) then "--rev_primer" else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (barcode_mismatch) then "--barcode_mismatch" else ""} \
      ~{if (require_primer) then "--require_primer" else ""} \
      ~{if (min_len) then "--min_len" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.1--py_1"
  }
  parameter_meta {
    input_fastq_file: "Input FASTQ file or folder (Required)"
    out: "Output base name. Default: sra"
    mapping_file: "QIIME-like mapping file."
    barcode_fast_a: "file containing barcodes used."
    bio_sample: "BioSample worksheet from NCBI (from confirmation email)"
    platform: "Sequencing platform. Defalt: ion (ion, illumina, 454)"
    names: "CSV name mapping file, e.g. BC_1,NewName"
    description: "Paragraph description for SRA experimental design. Use quotes to wrap paragraph."
    fwd_primer: "Forward primer sequence. Default: fITS7"
    rev_primer: "Reverse primer sequence. Default: ITS4"
    append: "Append a name to the output of all files in run, i.e. run1 -> Sample_run1"
    primer_mismatch: "Number of mismatches allowed in primer search. Default: 2"
    barcode_mismatch: "Number of mismatches in barcode to allow. Default: 0"
    require_primer: "Require primer(s) to be present for output. Default: off [off,forward,both]"
    min_len: "Minimum length read to keep after trimming barcodes. Default 50"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}