version 1.0

task ExtractBarcodes.py {
  input {
    String fastq1Fastq1
  }
  command <<<
    extract_barcodes.py \
      ~{if defined(fastq1Fastq1) then ("--fastq1 " +  '"' + fastq1Fastq1 + '"') else ""}
  >>>
}